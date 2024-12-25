DEPRECATED IN FAVOR OF https://github.com/pyramation/latex-pstricks-docker/

The goal of this image is to make it super easy to have a turn-key LaTeX setup ;)

# build

first time takes a while

```sh
make
```

# create a local `tex/` folder

On your computer in the same directory you create your LaTeX folder, call the folder `tex/`

* Store your `.tex` files (or folders) here.
* Any files (like pdfs) you create in the LaTeX box will be available here.

```sh
mkdir tex
```

# ssh into the box

```sh
make ssh
```

# create pdfs!

latex a file

```sh
latex doc.tex
```

turn the dvi into a pdf

```sh
dvipdfm doc
```

# tips for lots of embedded graphics

Try out other approaches if this doesn't work, but I've found it works great.

```sh
latex math.tex
dvips -Ppdf -G0 math.dvi
ps2pdf math.ps
```

# bibtex

At the bottom of your document, let's say `awesome.tex` include

```
\newpage
\bibliographystyle{cell}
\bibliography{sources}
```

`\bibliography` is referencing `sources.bib` in the current directory. Then run:

```sh
latex awesome.tex
bibtex awesome.tex
latex awesome.tex
latex awesome.tex
```
