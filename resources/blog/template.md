# Title

Paragraph

## Header2
Paragraph with a [link](linkaddress)

<figure>
<picture>
<source srcset="https://cdn.pixabay.com/photo/2021/12/29/08/18/insect-6900940_960_720.jpg" media="(prefers-color-scheme: dark)" alt="picture description">
<img src="https://cdn.pixabay.com/photo/2022/11/03/03/05/apples-7566512_960_720.jpg" alt="picture description" loading="lazy" decoding="async">
</picture>
<figcaption>Picture caption</figcaption>
</figure>

### Header3
Another paragraph with cosmetic differences like <i>italics</i>, <b>bold</b>; or structural importance like *emphasis* or **strong emphasis**. <code>monospaced string or inline code.</code>. Underline is not supported and discouraged, to reduce confusion with links.

```
code block
with just
    some lines
    of
text
```

Testing some math functions

<math>
    <mrow> <msup> <mfenced> <mrow> <mi>a</mi> <mo>+</mo> <mi>b</mi> </mrow> </mfenced> <mn>2</mn> </msup> </mrow>
</math>

Another one, just in case.

<math>
    <mrow> <mi>x</mi> <mo>=</mo> <mfrac> <mrow> <mrow> <mo>-</mo> <mi>b</mi> </mrow> <mo>&PlusMinus;</mo> <msqrt> <mrow> <msup> <mi>b</mi> <mn>2</mn> </msup> <mo>-</mo> <mrow> <mn>4</mn> <mo>&InvisibleTimes;</mo> <mi>a</mi> <mo>&InvisibleTimes;</mo> <mi>c</mi> </mrow> </mrow> </msqrt> </mrow> <mrow> <mn>2</mn> <mo>&InvisibleTimes;</mo> <mi>a</mi> </mrow> </mfrac> </mrow> </math> <math> <mrow> <mi>A</mi> <mo>=</mo> <mfenced open=[ close=]> <mtable> <mtr> <mtd><mi>x</mi></mtd> <mtd><mi>y</mi></mtd> </mtr> <mtr> <mtd><mi>z</mi></mtd> <mtd><mi>w</mi></mtd> </mtr> </mtable> </mfenced> </mrow>
</math>

Last one, I promise

<math>
    <mrow> <semantics> <mrow> <msubsup> <mo>&int;</mo> <mn>1</mn> <mi>t</mi> </msubsup> <mfrac> <mrow> <mo>&dd;</mo> <mi>x</mi> </mrow> <mi>x</mi> </mfrac> </mrow> <annotation-xml encoding=MathML-Content> <apply> <int/> <bvar><ci>x</ci></bvar> <lowlimit><cn>1</cn></lowlimit> <uplimit><ci>t</ci></uplimit> <apply> <divide/> <cn>1</cn> <ci>x</ci> </apply> </apply> </annotation-xml> </semantics> </mrow>
</math>

Another paragraph and a table below:

<figure>
<div style="overflow: auto;">
<table>
    <thead>
        <tr>
            <th>Row/col header</th>
        	<th>Row header</th>
        	<th colspan="2">Row header spanning 2 cols</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <th>Row/col footer</th>
        	<th>Row footer</th>
        	<th>Row footer</th>
        	<th>Row footer</th>
        </tr>
        </tfoot>
    <tbody>
        <tr>
            <th>Col header</th>
        	<td>cell</td>
        	<td>cell</td>
        	<td>cell</td>
        </tr>
        <tr>
            <th rowspan="2">Col header spanning 2 rows</th>
        	<td>cell</td>
        	<td>cell</td>
        	<td>cell</td>
        </tr> 
        <tr>
        	<td></td>
            <td> &lt;- empty cell</td>
        	<td>cell</td>
        </tr>  
        <tr>
            <th>Col header</th>
        	<td>cell</td>
            <td rowspan="2" colspan="2">Cell spanning two rows and cols</td>
        </tr>
        <tr>
            <th>Col header</th>
        	<td>cell</td>
        </tr>
        <tr>
            <th>Col header</th>
        	<td>cell</td>
        	<td>cell</td>
        	<td>cell</td>
        </tr>
    </tbody>
</table>
</div>
<figcaption>Table caption</figcaption>
</figure>

Text with sub<sub>script</sub> and super<sup>script</sup> texts.<sup>[[Footnote](link)]</sup>

An unordered list:

* Something.
* Something more.
* Something even more.

And an ordered list:

1. Somthing else.
2. This too.
3. This three.