# Data structure
## Summary
<p>In computer science, a <b>data structure</b> is a data organization and storage format that is usually chosen for efficient access to data. More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data, i.e., it is an algebraic structure about data.
</p>
## R Code Example
```r
 Here's an example of a simple data structure implementation in R using arrays (vectors) and lists, demonstrating efficient access to data:

```R
# Creating a vector (1-dimensional array) for storing numbers
numbers <- c(1, 2, 3, 4, 5)

# Accessing elements in the vector using indexing
print("First element:", numbers[1]) # First element: 1
print("Last element:", numbers[length(numbers)]) # Last element: 5

# Creating a list for storing different data types
data_list <- list(name = "John Doe", age = 30, hobbies = c("Reading", "Coding"))

# Accessing elements in the list using names or indexing
print("Name:", data_list$name) # Name: John Doe
print
```
