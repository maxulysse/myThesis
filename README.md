[![Stories in Ready](https://badge.waffle.io/MaxUlysse/myThesis.png?label=ready&title=Ready)](https://waffle.io/MaxUlysse/myThesis)
# <img alt="myThesis Logo" src="http://i.imgur.com/BZvsDhk.png" height=50 /> 1.0

## INSTALLATION
* Download the source with a <code>git clone git@github.com:MaxUlysse/myThesis.git</code>
* Write your thesis
* Use <code>make</code> to build the pdf of your thesis

## USAGE
### Files
* <code>myThesis.tex</code> is the main file containing the calling to the other files.
* <code>myThesis.sty</code> contains most of the packages needed
* <code>preamble.tex</code> contains the rest of the packages and definitions for building the file

### Directories
* <code>bibliography</code> contains your bibliography in BibTex format
* <code>articles</code> contains the articles you want to include in your thesis
* <code>figures</code> contains the figures you wan to include in your thesis
* <code>tex</code> contains all the tex files for your thesis

### Scripts
* <code>Makefile</code> build your thesis
* <code>updateBibliography.sh</code> update your bibliography from a Mendeley bibliography file

### How to include pictures in your document:
- Include SVG version of figure:
```
\def\svgwidth{\columnwidth}\input{figures/figure.pdf_tex}
```
- Include PNG version of figure:
```
\includegraphics[width=\columnwidth]{figures/figure.png}
```

## CHANGELOG
### Version β
* add version number
* add changelog
* enhance readme.md

### Version α
* project creation

## LICENSE
---
It was under GNU/GPL copyleft license. Just change it with new version to MIT License

## NOTES
I got this thesis template from Charles Chapple, who probably save my thesis whith it.  I'll probably never be able to thank him enough.
This thesis template has been adapted from that of Sergi Castellano and Domenec Farre, with bits and pieces of Enrique Blanco's thrown in.  All of these were derived from the original templates written by Robert Castelo and Sergio Mendoza.  At some point during this process, Josep Abril got involved and, according to one of the previous people, who knew him, probably rewrote the whole thing. And I also did the same ;-)

## myOwnThesis
If you want to see my own thesis made with this template, go to [github.com/MaxUlysse/myOwnThesis](https://github.com/MaxUlysse/myOwnThesis)
