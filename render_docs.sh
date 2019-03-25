#!/bin/bash
#
# Renders markdown to HTML for pretty presentation and then opens it in a
# browser. To render on all changes:
# $ ls -1 doc/* README.md | entr bash -c "make; open target/README.html"

pandoc -s --to html README.md docs/* > /tmp/README.html
open /tmp/README.html
