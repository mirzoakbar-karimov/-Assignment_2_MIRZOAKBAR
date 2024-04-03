set.seed(123)  # Set seed for reproducibility
df <- data.frame(
  list = sample(c(letters[1:5], NA), 10, replace = TRUE),
  integer = sample(1:100, 10, replace = TRUE),
  boolean = sample(c(TRUE, FALSE, NA), 10, replace = TRUE),
  float = rnorm(10)
)
df[sample(1:nrow(df), 3), sample(1:ncol(df), 2)] <- NA
df


df_nonavalues <- na.omit(df)
df_nonavalues
