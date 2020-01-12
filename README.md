# Boxes and Diamonds

![Book Cover](http://builds.openlogicproject.org/courses/boxes-and-diamonds/bd.png)

A textbook for modal and other intensional logics based on the Open
Logic Project. It covers normal modal logics, relational semantics, 
axiomatic and tableaux proof systems, intuitionistic logic, and 
counterfactual conditionals.

This repository/directory only contains the LaTeX files and
illustrations needed to typeset the textbook _Boxes and Diamonds_,
which in turn requires the _[Open Logic
Text](http://github.com/OpenLogicProject/OpenLogic/)_.

You can [download the
PDF](http://builds.openlogicproject.org/courses/boxes-and-diamonds/bd-screen.pdf)
of the most recent version from the [Open Logic builds
site](http://builds.openlogicproject.org/), or order a
hardcopy from Amazon [[US](https://www.amazon.com/dp/1077321384)]
[[CA](https://www.amazon.ca/dp/1077321384)]
[[UK](https://www.amazon.co.uk/dp/1077321384)]
[[DE](https://www.amazon.de/dp/1077321384)].

To install and compile:

- Download/install the _Open Logic Text_ from
  [GitHub](http://github.com/OpenLogicProject/OpenLogic/), including [photos](https://github.com/OpenLogicProject/photos) and [line art portraits](https://github.com/OpenLogicProject/portraits).
- Navigate to the subdirectory `courses/`
- Put the content of [this repository](https://github.com/rzach/boxes-and-diamonds) into a subdirectory of it, say
  `courses/boxes-and-diamonds`.
- To get the graphics for the cover, navigate to the subdirectory `OpenLogic/assets` and put the content of `photos` into the subdirectory `photos`, and the content of `portraits` into the subdirectory `portraits`

If you use `git`, this should do it:
```
# git clone https://github.com/OpenLogicProject/OpenLogic.git
# cd OpenLogic/courses
# git clone https://github.com/rzach/boxes-and-diamonds.git
# cd ../assets
# git clone https://github.com/OpenLogicProject/portraits.git
# git clone https://github.com/OpenLogicProject/photos.git
```
Inside `courses/boxes-and-diamonds`, you can now compile:
```
# cd boxes-and-diamonds
# pdflatex bd-screen
```
or just `# make` if you have `latexmk` installed.

The file `bd-screen.tex` produces a color version of the text
with smaller margins for screen reading. `bd-print` produces a
black-and-white version designed for printing on Crown Quarto stock
(without cover).

Both versions load `bd.tex`, which contains the actual
material. It in turn includes other files, most of them from the
`OpenLogic` repository. So you won't get a complete book unless you
download into the right subdirectory of and compile from there.

[![Creative Commons License](http://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png)](http://creativecommons.org/licenses/by/4.0/) 

_[Boxes and Diamonds](https://github.com/rzach/boxes-and-diamonds)_ by [Richard
Zach](http://richardzach.org/) is licensed under a [Creative
Commons Attribution 4.0 International
License](http://creativecommons.org/licenses/by/4.0/).
