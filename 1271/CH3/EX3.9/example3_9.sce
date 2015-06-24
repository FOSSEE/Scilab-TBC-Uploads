clc 
// Given that
r = 3 / 4 // ratio of intensity of transmitted light to the intensity of incident light
// Sample Problem 9 on page no. 3.26
printf("\n # PROBLEM 9 # \n")
theta = acos(sqrt(r)) * (180 / %pi) // calculation for angle between the nicol prisms
printf("\n Standard formula used \n theta = acos(sqrt(r)) * (180 / pi). \n") 
printf("\n Angle between the nicol prisms = %f degree",theta)
