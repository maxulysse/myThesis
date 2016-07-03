# myThesis template 1.0

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
"THE NOT-A-BEER-WARE LICENSE" (Revision 42): [@MaxUlysse](https://github.com/MaxUlysse) wrote this file.  As long as you retain this notice you can do whatever you want with this stuff.  If we meet some day, and you think this stuff is worth it, you can buy me not a beer in return.

---
It was under GNU/GPL copyleft license.  But since I changed it for a NOT-A-BEER-WARE LICENSE.  So you can still FEEL FREE TO USE AND IMPROVE IT, and also you can BUY ME A DRINK !!

## NOTES
I got this thesis template from Charles Chapple, who probably save my thesis whith it.  I'll probably never be able to thank him enough.
This thesis template has been adapted from that of Sergi Castellano and Domenec Farre, with bits and pieces of Enrique Blanco's thrown in.  All of these were derived from the original templates written by Robert Castelo and Sergio Mendoza.  At some point during this process, Josep Abril got involved and, according to one of the previous people, who knew him, probably rewrote the whole thing. And I also did the same ;-)

## myOwnThesis
If you want to see my own thesis made with this template, go to [github.com/MaxUlysse/myOwnThesis](https://github.com/MaxUlysse/myOwnThesis)