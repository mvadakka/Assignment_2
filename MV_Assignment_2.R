#' Mausam Vadakkayil
#' Assignment 2: Narcissistic Numbers

#'Plan
#'If user.input is numeric, positive, and three digits
#'subset digits of number
#'Then, cube first index and save to dig1 & cube second index and save to dig2 & cube third index and save to dig3
#'Then, sum.digits <- sum(dig1 + dig2 + dig 3)
#'if user.input == sum.digits
#'print (user.input is an Armstrong number)
#'else
#'print (user.input is not an armstrong number)


#' Prompt the user to enter a three digit positive number
pos.num <- readline(prompt = "Please enter a three digit positive number:")
numeric.pos <- as.numeric(pos.num) #save user input as numeric

#' Check if the user input is numeric. If not, print an error message and quit.
if(is.na(numeric.pos) | nchar(pos.num) > 3 | pos.num < 0) { #first check if numeric.pos is NA (i.e. non numerical value), then that it does not have more than three digits and that it is not a negativie number
  print(paste("ERROR:", pos.num,"is not a valid three digit positive number.")) #if numeric.pos is NA, more than three digits and negative, print error and quit)
} 

digits.pos <- (as.numeric(unlist(strsplit(pos.num, "")))) #if above conditions satisfied, subset digits of number and save in numeric form to digits.pos

#' Check if the number is narcissistic. A narcissistic number, or an Armstrong number, 
#' is a number that is equal to the sum of the cubes of its own digits. 153, 370, 371, 407 are three digit Armstrong numbers.

dig1 <- digits.pos[1]^3 #subset index 1 from digits.pos, cube it, and assign it to dig1
dig2 <- digits.pos[2]^3 #subset index 2 from digits.pos, cube it, and assign it to dig2
dig3 <- digits.pos[3]^3 #subset index 3 from digits.pos, cube it, and assign it to dig3

sum.digits <- sum(dig1, dig2, dig3) #find the sum of dig1 to dig3, assign it to sum.digits

if(isTRUE(sum.digits == numeric.pos)) { #if sum.digits (which is the sum each digit after being cubed) is equal to the user.input value
  print(paste("Success!", numeric.pos, "is an Armstrong Number :)")) #' display the result with an success message stating the user inputted number is an Armstrong number
} else { #otherwise
  print(paste("Error.", numeric.pos, "is not an Armstrong Number :(")) #display the result with an ERROR message stating the user inputted number is an Armstrong number
}

