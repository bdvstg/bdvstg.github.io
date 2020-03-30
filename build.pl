#!/usr/bin/perl
use File::Basename;
use File::Find;

sub wanted {
    /^.*\.md/s &&
    (($name,$path,$suffix) = fileparse($File::Find::name)) &&
    print "$name ---- $path ---- $suffix\n";
}

find(\&wanted, "./");
#for my $file ($files){
    #print("========> $file");
    #($name,$path,$suffix) = fileparse($file);
    #print "name=" . $name . ",  path=" . $path . ",  suffix=" . $suffix;
#}

# command <get hash and date> 'git log --pretty=format:"%H - %ad" --date=format:"%Y-%m-%d %H:%M" article/ViewMatrix/'