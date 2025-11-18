# Algorithm
## Summary
<p class="mw-empty-elt">
</p>

<p>In mathematics and computer science, an <b>algorithm</b> (<span> <span></span></span>) is a finite sequence of mathematically rigorous instructions, typically used to solve a class of specific problems or to perform a computation. Algorithms are used as specifications for performing calculations and data processing. More advanced algorithms can use conditionals to divert the code execution through various routes (referred to as automated decision-making) and deduce valid inferences (referred to as automated reasoning).
</p><p>In contrast, a heuristic is an approach to solving problems without well-defined correct or optimal results. For example, although social media recommender systems are commonly called "algorithms", they actually rely on heuristics as there is no truly "correct" recommendation.
</p><p>As an effective method, an algorithm can be expressed within a finite amount of space and time and in a well-defined formal language for calculating a function. Starting from an initial state and initial input (perhaps empty), the instructions describe a computation that, when executed, proceeds through a finite number of well-defined successive states, eventually producing "output" and terminating at a final ending state. The transition from one state to the next is not necessarily deterministic; some algorithms, known as randomized algorithms, incorporate random input.
</p>


## R Code Example
```r
 Here's a simple example of an algorithm written in R that calculates the Fibonacci sequence up to a given number `n`. This is a recursive algorithm.

```R
# Define a function to calculate Fibonacci sequence
fibonacci <- function(n) {
  if (n <= 2) return(1) # Base case: first two numbers in the sequence are 1
  else return(fibonacci(n - 1) + fibonacci(n - 2)) # Recursive case
}

# Example usage
n <- 10 # Number of terms to calculate
result <- rep(0, n) # Initialize an array to store the results
for (i in seq_len(n)) {
  result[i] <- fibonacci(i) # Calculate each term and store it
}
print(result
```
