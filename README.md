# MDBlog - Markdown Blog

a project of "Use GitHub/Markdown as blogging platform"

## feature

- simple and tiny (for programmer)
- write blog using markdown
- article stored in github
- Windows compatible (Git built-in MINGW64)
  - I'm current using win10 git 2.23.0
- syntax highlighting to markdown's code block
- history of article (works only github.io)

## target

- article with label
- split view
- search (works only github.io)

## using

- javascript
  - vue (UI)
  - axios (fetch)
  - markdown-it (convert markdown to html with syntax highlight callback)
  - highlightjs (syntax highlight)
- git
- perl (for create list)
  - JSON::PP (convert to json format, should be built-in in git 2.23.0)
- python (for test locally)

## brief

- perl script create list (index) of article and label
- push all to github
- axios fetch list from github, vue show to list view
- user click a article in list view
- fetch markdown file from github
- convert markdown to html
- show to specific split view
- github provide search function and tree snapshot function
- history of article
  - use git to build list of history (sha hash) of folder
  - switch to specific github/tree

## note

- can not drag index.html to chrome to test, it block by CORS policy
- for publish to github, only repository named 'username.github.io' works
  - means, you must push to a repository named 'username.github.io'
  - and browse by visit <https://username.github.io>
  - try reference to my github.io
    - repository -> <https://github.com/bdvstg/bdvstg.github.io>
    - website -> <https://bdvstg.github.io>
- for locally test, just run a http server
  - apache, nginx, ...
  - I'm using python's SimpleHTTPServer, run below in root of project
    - 'python3 -m http.server 8080'
    - or 'python2 -m SimpleHTTPServer 8080'
