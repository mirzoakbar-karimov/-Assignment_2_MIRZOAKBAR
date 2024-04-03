# -Assignment_2_MIRZOAKBAR
Data Analysis Using R Programming  Assignment 2


Sure, here's an example of a README file for the code snippet above:

---

# R Script for Creating and Manipulating a Dataframe

This R script demonstrates how to create a dataframe with some NA values, and then remove the NA values using the `na.omit()` function.

## Requirements

To run this script, you'll need:

- R (version 3.6.0 or later)

## Usage

To use this script:

1. Copy the code snippet into an R script file.
2. Run the script in R.

## Code Explanation

### Step 1: Set Seed for Reproducibility

The `set.seed()` function is used to ensure that the data is reproducible. This means that the same sequence of random numbers will be generated each time the script is run.
```r
set.seed(123)
```
### Step 2: Create Dataframe with NA Values

The `data.frame()` function is used to create a dataframe with 4 columns and 10 rows, containing some NA values.
```r
df <- data.frame(
  list = sample(c(letters[1:5], NA), 10, replace = TRUE),
  integer = sample(1:100, 10, replace = TRUE),
  boolean = sample(c(TRUE, FALSE, NA), 10, replace = TRUE),
  float = rnorm(10)
)
df[sample(1:nrow(df), 3), sample(1:ncol(df), 2)] <- NA
df
```
### Step 3: Remove NA Values

The `na.omit()` function is used to remove any rows with NA values from the dataframe.
```r
df_nonavalues <- na.omit(df)
df_nonavalues
```
## Output

The output of the script is a dataframe with 4 columns and 10 rows, containing some NA values, and a new dataframe with the NA values removed.

---
