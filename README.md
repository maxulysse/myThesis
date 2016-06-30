# myThesis template
I got this thesis template from Charles Chapple, who probably save my thesis whith it.  I'll probably never be able to thank him enough.
This thesis template has been adapted from that of Sergi Castellano and Domenec Farre, with bits and pieces of Enrique Blanco's thrown in.  All of these were derived from the original templates written by Robert Castelo and Sergio Mendoza.  At some point during this process, Josep Abril got involved and, according to one of the previous people, who knew him, probably rewrote the whole thing. And I also did the same ;-)

### License
---
"THE NOT-A-BEER-WARE LICENSE" (Revision 42):

@MaxUlysse wrote this file.  As long as you retain this notice you can do

whatever you want with this stuff.  If we meet some day, and you think this

stuff is worth it, you can buy me not a beer in return.  Maxime

---
It was under GNU/GPL copyleft license.  But I changed it for a NOT-A-BEER-WARE LICENSE.  So you can still FEEL FREE TO USE, IMPROVE IT, AND BUY ME A DRINK !!

## How to include SVG pictures in your document:
Prepare your SVG, and then, use <code>make</code> to convert your SVG to PDF and PNG
And in your file:
- Include SVG version of figure:
```
\def\svgwidth{\columnwidth}\input{figures/figure.pdf_tex}
```
- Include PNG version of figure:
```
\includegraphics[width=\columnwidth]{figures/figure.png}
```

## Usage
Type the following command :  
<code>make</code> to build a pdf of your thesis (without the logs)  
<code>make log</code> if you want to keep the log when building your thesis  
<code>make clean</code> to remove your pdf

## myOwnThesis
If you want to see my own thesis made with this template, go to [github.com/MaxUlysse/myOwnThesis](https://github.com/MaxUlysse/myOwnThesis)