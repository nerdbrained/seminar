# Math Seminar

A simple static site for an informal math seminar series. The site is built
with [HTSX](https://github.com/TotalVerb/SExpressions.jl).

Here are some tutorials on how to edit the website:

- [Talks, abstract, summaries](https://www.youtube.com/watch?v=0bCAP7vxUAU)

Here are some tools to help out:

- [Potential Topics Tool](http://uwseminars.com/pttool/)

## To deploy:
Generate the site (note that the scripts are, for historical reasons, named
somewhat misleadingly):

```sh
./make.jl
```

Push the generated `public` folder to the `gh-pages` branch.

# Editing

All the content is stored in the `pages` directory as markdown files, or in the
`lisp` directory as HTSX files.

You can edit them directly on Github, or clone the repository to your computer.
