#!/usr/bin/perl
use JSON::PP;
use File::Basename;
use File::Find;

$json = JSON::PP->new->ascii->pretty->allow_nonref;

my @files;
find(sub {
    /^.*\.md/s && # find all *.md in target directory (./article)
    ($files[$#files+1] = $File::Find::name);
}, "./article");

my @list;
for my $file (@files) {
    ($name,$path,$suffix) = fileparse($file); # get path of directory of md file

    # get commits of directory
    my @rawdata = `git log --pretty=format:"%H,%ad" --date=format:"%Y-%m-%d %H:%M" $path`;

    my @history;
    for my $data (@rawdata) { # parse rawdata and push into history
        chomp($data); # trim end of newline
        my @values = split(',', $data);
        my %cd = (
            "sha" => $values[0], # sha(hash) code of commit
            "date" => $values[1] # commit date
        );
        $history[$#history+1] = \%cd;
    }
    my %article = ( # combine result
        "text" => $name,
        "path" => "$path$name",
        "history" => \@history
    );
    $list[$#list+1] = \%article;
}
my %output = ("list"=>\@list);
$pretty_printed_json_text = encode_json \%output;
#print($pretty_printed_json_text);

my $filename = 'list.json';
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
print $fh $pretty_printed_json_text;
close $fh;
