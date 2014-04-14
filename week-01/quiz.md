Quiz
====

|Attempts|Score|
|--------|-----|
|     2/2|20/20|


Question 1
----------
R was developed by statisticians working at...

### Answer
The University of Auckland

### Explanation
The R language was developed by Ross Ihaka and Robert Gentleman who were statisticians at the University of Auckland in New Zealand.


Question 2
----------
The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition?

### Answer
The freedom to sell the software for any price.

### Explanation
This is not part of the free software definition. The free software definition does not mention anything about selling software (although it does not disallow it).


Question 3
----------
In R the following are all atomic data types EXCEPT

### Answer
matrix

### Explanation
'matrix' is not an atomic data type in R.


Question 4
----------
If I execute the expression x <- 4 in R, what is the class of the object 'x' as determined by the `class()' function?

### Answer
numeric

### Explanation

	> x <- 4
	> class(x)
	[1] "numeric"


Question 5
----------
What is the class of the object defined by x <- c(4, TRUE)?

### Answer
numeric

###Explanation
The numeric class is the "lowest common denominator" here and so all elements will be coerced into that class.

R does automatic coercion of vectors so that all elements of the vector are the same data class.

	> x <- c(4, TRUE)
	> class(x)
	[1] "numeric"


Question 6
----------
If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?

### Answer
a 3 by 2 numeric matrix	

### Explanation
The 'cbind' function treats vectors as if they were columns of a matrix. It then takes those vectors and binds them together column-wise to create a matrix.

	> x <- c(1,3, 5)
	> y <- c(3, 2, 10)
	> cbind(x, y)
	     x  y
	[1,] 1  3
	[2,] 3  2
	[3,] 5 10


Question 7
----------
A key property of vectors in R is that

### Answer
elements of a vector all must be of the same class


Question 8
----------
Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me?

### Answer
a numeric vector containing the element 2

### Explanation

	> x <- list(2, "a", "b", TRUE)
	> x[[1]]
	[1] 2
	> class(x[[1]])
	[1] "numeric"


Question 9
----------
Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?

### Answer
a numeric vector with elements 3, 4, 5, 6.


### Explanation

	> x <- 1:4
	> y <- 2
	> x + y
	[1] 3 4 5 6
	> class(x + y)
	[1] "numeric"


Question 10
-----------
Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?

### Answer
x[x >= 11] <- 4

### Explanation
You can create a logical vector with the expression x >= 11 and then use the [ operator to subset the original vector x.

	> x <- c(17, 14, 4, 5, 13, 12, 10)
	> x[x >= 11] <- 4
	> x
	[1]  4  4  4  5  4  4 10


Question 11
-----------
In the dataset provided for this Quiz, what are the column names of the dataset?

### Answer
Ozone, Solar.R, Wind, Temp, Month, Day

### Explanation
You can get the column names of a data frame with the 'names()' function.

	> hw1 = read.csv('hw1_data.csv')
	> names(hw1)
	[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"


Question 12
-----------
Extract the first 2 rows of the data frame and print them to the console. What does the output look like?

### Answer
	  Ozone Solar.R Wind Temp Month Day
	1    41     190  7.4   67     5   1
	2    36     118  8.0   72     5   2

### Explantion
You can extract the first two rows using the [ operator and an integer sequence to index the rows.

	> hw1 = read.csv('hw1_data.csv')
	> hw1[c(1,2),]
	  Ozone Solar.R Wind Temp Month Day
	1    41     190  7.4   67     5   1
	2    36     118  8.0   72     5   2


Question 13
-----------
How many observations (i.e. rows) are in this data frame?

### Answer
153

### Explanation
You can use the 'nrows()' function to compute the number of rows in a data frame.

	> hw1 = read.csv('hw1_data.csv')
	> nrow(hw1)
	[1] 153


Question 14
-----------
Extract the last 2 rows of the data frame and print them to the console. What does the output look like?

### Answer

	   Ozone Solar.R Wind Temp Month Day
	152    18     131  8.0   76     9  29
	153    20     223 11.5   68     9  30

### Explanation
The 'tail()' function is an easy way to extract the last few elements of an R object.

	> hw1 = read.csv('hw1_data.csv')
	> tail(hw1,2)
	    Ozone Solar.R Wind Temp Month Day
	152    18     131  8.0   76     9  29
	153    20     223 11.5   68     9  30


Question 15
-----------
What is the value of Ozone in the 47th row?

### Answer
21

### Explanation
The single bracket [ operator can be used to extract individual rows of a data frame.

	> hw1 = read.csv('hw1_data.csv')
	> hw1[15,]
	   Ozone Solar.R Wind Temp Month Day
	15    18      65 13.2   58     5  15


Question 16
-----------
How many missing values are in the Ozone column of this data frame?

### Answer
37

### Explanation
The 'is.na' function can be used to test for missing values.

	> hw1 = read.csv('hw1_data.csv')
	> sub = subset(hw1, is.na(Ozone))
	> nrow(sub)
	[1] 37


Question 17
-----------
What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.

### Answer
42.1

### Explanation
The 'mean' function can be used to calculate the mean.

	> hw1 = read.csv('hw1_data.csv')
	> sub = subset(hw1, !is.na(Ozone), select = Ozone)
	> apply(sub, 2, mean)
	   Ozone 
	42.12931 


Question 18
-----------
Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

### Answer
212.8

### Explanation
You need to construct a logical vector in R to match the question's requirements. Then use that logical vector to subset the data frame.

	> hw1 = read.csv('hw1_data.csv')
	> sub = subset(hw1, Ozone > 31 & Temp > 90, select = Solar.R)
	> apply(sub, 2, mean)
	Solar.R 
	  212.8 


Question 19
-----------
What is the mean of "Temp" when "Month" is equal to 6?

### Answer
79.1

### Explanation

	> hw1 = read.csv('hw1_data.csv')
	> sub = subset(hw1, Month == 6, select = Temp)
	> apply(sub, 2, mean)
	Temp 
	79.1


Question 20
-----------
What was the maximum ozone value in the month of May (i.e. Month = 5)?

### Answer
115

### Explantion

	> hw1 = read.csv('hw1_data.csv')
	> sub = subset(hw1, Month == 5 & !is.na(Ozone), select = Ozone)
	> apply(sub, 2, max)
	Ozone 
	  115