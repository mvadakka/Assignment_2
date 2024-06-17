#' Mausam Vadakkayil
#' Assignment 2: Narcissistic Numbers

#' Prompt the user to enter a three digit positive number
pos.num <- readline(prompt = "Please enter a three digit positive number:")
numeric.pos <- as.numeric(pos.num)

#' Check if the user input is numeric. If not, print an error 
#' message and quit.
if(is.na(numeric.pos) | nchar(pos.num) > 3 | pos.num < 0) { #first check if numeric.pos is NA (i.e. non numerical value), then that it does not have more than three digits and that it is not a negativie number
  print(paste("ERROR:", pos.num,"is not a valid three digit positive number.")) #if numeric.pos is NA, more than three digits and negative, print error and quit)
}

#' Check if the number is narcissistic. A narcissistic number, or an Armstrong number, 
#' is a number that is equal to the sum of the cubes of its own digits. 153, 370, 371, 407 are three digit Armstrong numbers.


#' Display the result with an appropriate message, e.g. “127 is not an Armstrong number” or “370 is a narcissistic number” or any additional fun text you may want to add.
