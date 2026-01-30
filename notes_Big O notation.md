# Big O notation
## Summary
<span></span>

<p><b>Big <i>O</i> notation</b> is a mathematical notation that describes the limiting behavior of a function when the argument tends towards a particular value or infinity. Big O is a member of a family of notations invented by German mathematicians Paul Bachmann, Edmund Landau, and others, collectively called <b>Bachmann–Landau notation</b> or <b>asymptotic notation</b>.  The letter O was chosen by Bachmann to stand for <i>Ordnung</i>, meaning the order of approximation.
</p><p>In computer science, big O notation is used to classify algorithms according to how their run time or space requirements grow as the input size grows.  In analytic number theory, big O notation is often used to express a bound on the difference between an arithmetical function and a better understood approximation; one well-known example is the remainder term in the prime number theorem. Big O notation is also used in many other fields to provide similar estimates.
</p><p>Big O notation characterizes functions according to their growth rates: different functions with the same asymptotic growth rate may be represented using the same O notation. The letter O is used because the growth rate of a function is also referred to as the <b>order of the function</b>.  A description of a function in terms of big O notation only provides an upper bound on the growth rate of the function.
</p><p>Associated with big O notation are several related notations, using the symbols <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle o}">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>o</mi>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle o}</annotation>
  </semantics>
</math></span></span>, <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle \Omega }">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi mathvariant="normal">Ω<!-- Ω --></mi>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle \Omega }</annotation>
  </semantics>
</math></span></span>, <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle \omega }">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi>ω<!-- ω --></mi>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle \omega }</annotation>
  </semantics>
</math></span></span>, and <span><span><math xmlns="http://www.w3.org/1998/Math/MathML" alttext="{\displaystyle \Theta }">
  <semantics>
    <mrow class="MJX-TeXAtom-ORD">
      <mstyle displaystyle="true" scriptlevel="0">
        <mi mathvariant="normal">Θ<!-- Θ --></mi>
      </mstyle>
    </mrow>
    <annotation encoding="application/x-tex">{\displaystyle \Theta }</annotation>
  </semantics>
</math></span></span> to describe other kinds of bounds on asymptotic growth rates.
</p>
## R Code Example
```r
 Here's an R code demonstration of Big O notation in terms of algorithm analysis:

```R
# Define functions with different time complexities
f1 <- function(n) {
  sum(1:n)  # O(n) - Linear time complexity
}

f2 <- function(n) {
  for (i in 1:n) {
    for (j in 1:n) {
      nextval <- i * j  # O(n^2) - Quadratic time complexity
    }
  }
}

f3 <- function(n) {
  ifelse(n == 0, 1, n)  # O(log n) - Logarithmic time complexity
}

# Time the functions for different input sizes
input_sizes <- c(10, 100, 1
```
