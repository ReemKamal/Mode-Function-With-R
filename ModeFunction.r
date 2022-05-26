
# Data
d1 <- c(13, 18, 13, 14, 13, 16, 14, 21, 13)
d2 <- c(8, 18, 13, 14, 4, 16, 14, 21, 8)


# Function computes the score that occurs most frequently in a group of scores.
my_mode <- function(d) {
  
  # table: returns a table that counts the frequency of each value.
  a <- table(d)
  
  # Put the table in a frame.
  df <- data.frame(a)
  
  # calculate maximum value in the df
  max <- max(df$Freq)
  
  # return all the observations in max_df
  max_df = df[df$Freq == max ,]
  
  return(max_df$d)
}


# Test
values = my_mode(d1)
print(  paste('mode value: ' , values )  )  

values = my_mode(d2)
print(  paste('mode value: ' , values )  )  
