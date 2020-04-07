# note for developing

- if 'git log' no output, it is newest article.
- if 'git log' has output, first one will be sha/date of current

## about label

1. for add label please ref to last line of md files in article
2. label operation only works to lastes commit of md file (not works to history)
3. script always convert label into lowercase to do operation

but I'm not sure which is better, put into a meta-file or embedded into md file

## search

example of usage of github search api  
<https://api.github.com/search/code?q=perspective+repo:bdvstg/bdvstg.github.io>

according to <https://developer.github.com/v3/search/#search-repositories>  
for unauthenticated user, 10 requests per minute
