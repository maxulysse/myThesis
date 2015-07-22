myThesis template
===
How to include SVG pictures in your document :
---
Make your SVG, and then, use  
<code>make</code> to convert your SVG to PDF and PNG  
And in your file :

Include SVG version of Figure
---
<code>\def\svgwidth{\columnwidth}\input{figures/figure.pdf_tex}</code>

Include PNG version of Figure
---
<code>\includegraphics[width=\columnwidth]{figures/figure.png}</code>
