# Time complexity
## Summary
<p>In theoretical computer science, the <b>time complexity</b> is the computational complexity that describes the amount of computer time it takes to run an algorithm. Time complexity is commonly estimated by counting the number of elementary operations performed by the algorithm, supposing that each elementary operation takes a fixed amount of time to perform. Thus, the amount of time taken and the number of elementary operations performed by the algorithm are taken to be related by a constant factor.
</p><p>Since an algorithm's running time may vary among different inputs of the same size, one commonly considers the worst-case time complexity, which is the maximum amount of time required for inputs of a given size. Less common, and usually specified explicitly, is the average-case complexity, which is the average of the time taken on inputs of a given size (this makes sense because there are only a finite number of possible inputs of a given size). In both cases, the time complexity is generally expressed as a function of the size of the input. Since this function is generally difficult to compute exactly, and the running time for small inputs is usually not consequential, one commonly focuses on the behavior of the complexity when the input size increases—that is, the asymptotic behavior of the complexity. Therefore, the time complexity is commonly expressed using big O notation, typically <span><span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n)}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>O</mi>
        <mo stretchy="false">(</mo>
        <mi>n</mi>
        <mo stretchy="false">)</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n)}</annotation>
  </semantics>
</math></span></span>,</span> <span><span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n\log n)}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>O</mi>
        <mo stretchy="false">(</mo>
        <mi>n</mi>
        <mi>log</mi>
        <mo>⁡<!-- ⁡ --></mo>
        <mi>n</mi>
        <mo stretchy="false">)</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n\log n)}</annotation>
  </semantics>
</math></span></span>,</span> <span><span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n^{\alpha })}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>O</mi>
        <mo stretchy="false">(</mo>
        <msup>
          <mi>n</mi>
          <mrow class="MJX-TeXAtom-ORD">
            <mi>α<!-- α --></mi>
          </mrow>
        </msup>
        <mo stretchy="false">)</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n^{\alpha })}</annotation>
  </semantics>
</math></span></span>,</span> <span><span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(2^{n})}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>O</mi>
        <mo stretchy="false">(</mo>
        <msup>
          <mn>2</mn>
          <mrow class="MJX-TeXAtom-ORD">
            <mi>n</mi>
          </mrow>
        </msup>
        <mo stretchy="false">)</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(2^{n})}</annotation>
  </semantics>
</math></span></span>,</span> etc., where <span>n</span> is the size in units of bits needed to represent the input.
</p><p>Algorithmic complexities are classified according to the type of function appearing in the big O notation. For example, an algorithm with time complexity <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n)}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>O</mi>
        <mo stretchy="false">(</mo>
        <mi>n</mi>
        <mo stretchy="false">)</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n)}</annotation>
  </semantics>
</math></span></span> is a <i>linear time algorithm</i> and an algorithm with time complexity <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n^{\alpha })}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>O</mi>
        <mo stretchy="false">(</mo>
        <msup>
          <mi>n</mi>
          <mrow class="MJX-TeXAtom-ORD">
            <mi>α<!-- α --></mi>
          </mrow>
        </msup>
        <mo stretchy="false">)</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n^{\alpha })}</annotation>
  </semantics>
</math></span></span> for some constant <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle \alpha >0}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>α<!-- α --></mi>
        <mo>></mo>
        <mn>0</mn>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle \alpha >0}</annotation>
  </semantics>
</math></span></span> is a <i>polynomial time algorithm</i>.
</p>


## R Code Example
```r
 Here's an example R code demonstrating time complexity using two simple algorithms: linear search and binary search. The linear search has O(n) time complexity (worst-case scenario), while the binary search has O(log n) time complexity.

```R
# Linear Search function
linear_search <- function(vec, target) {
  for (i in seq_along(vec)) {
    if (vec[i] == target) return(i)
  }
  return(NA) # Not found
}

# Binary Search function
binary_search <- function(vec, target, start = 1, end = length(vec)) {
  while (start <= end) {
    mid <- floor((start + end) / 2)
    if (vec[mid] == target) return(mid)
    if (vec[mid] < target
```
