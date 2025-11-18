# Space complexity
## Summary
<p>The <b>space complexity</b> of an algorithm or a data structure is the amount of memory space required to solve an instance of the computational problem as a function of characteristics of the input. It is the memory required by an algorithm until it executes completely. This includes the memory space used by its inputs, called <b>input space</b>, and any other (auxiliary) memory it uses during execution, which is called <b>auxiliary space</b>.
</p><p>Similar to time complexity, space complexity is often expressed asymptotically in big <i>O</i> notation, such as <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n),}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>O</mi>
        <mo stretchy="false">(</mo>
        <mi>n</mi>
        <mo stretchy="false">)</mo>
        <mo>,</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n),}</annotation>
  </semantics>
</math></span></span>
<span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n\log n),}">
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
        <mo>,</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n\log n),}</annotation>
  </semantics>
</math></span></span> <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(n^{\alpha }),}">
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
        <mo>,</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(n^{\alpha }),}</annotation>
  </semantics>
</math></span></span> <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle O(2^{n}),}">
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
        <mo>,</mo>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle O(2^{n}),}</annotation>
  </semantics>
</math></span></span> etc., where <span>n</span> is a characteristic of the input influencing space complexity.
</p>
## R Code Example
```r
 Here is a simple R code demonstration of space complexity using two functions: one with linear space complexity (O(n)) and another with constant space complexity (O(1)).

```R
# Function for linear space complexity (O(n))
linear_space <- function(n) {
  # Allocate a vector of size n
  vec <- numeric(n)
  return(vec)
}

# Function for constant space complexity (O(1))
constant_space <- function() {
  # No additional memory is allocated, only the input 'x' is used
  x <- 5
  return(x)
}

# Demonstrate linear space complexity
linear_vec <- linear_space(10)

# Demonstrate constant space complexity
const_val <- constant_space()
```

In this example, the
```
