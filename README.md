# MDBlog - Markdown Blog

a example of "How to use GitHub and Markdown as blogging platform"

## target

- simple and tiny (for programmer)
- write blog using markdown
- article stored in github
- article with label
- Windows compatible (Git built-in MINGW64)
- split view
- syntax highlighting to markdown's code block

## using

- javascript
  - vue (UI)
  - axios (fetch)
  - a library that convert markdown to html
- git
- bash (for create list)
- python (for test locally)

## brief

- bash script create list (index) of article and label
- push all to github
- axios fetch list from github, vue show to list view
- user click a article in list view
- fetch markdown file from github
- convert markdown to html
- show to specific split view

## note

- can not drag index.html to chrome to test, it block by CORS policy
- for publish to github, only repository named 'username.github.io' works
  - means, you must push to a repository named 'username.github.io'
  - and browse by visit https://username.github.io
  - try reference to my github.io
    - repository -> https://github.com/bdvstg/bdvstg.github.io
    - website -> https://bdvstg.github.io
- for locally test, just run a http server
  - apache, nginx, ...
  - I'm using python's SimpleHTTPServer, run below in root of project
    - 'python3 -m http.server 8080'
    - or 'python2 -m SimpleHTTPServer 8080'