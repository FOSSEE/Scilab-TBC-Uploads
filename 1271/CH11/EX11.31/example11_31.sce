
clc 
// Given that
T = 24 // no. of hours in a day
v = 1e8 // speed of spaceship in meter/sec
// Sample Problem 31 on page no. 11.30
printf("\n # PROBLEM 31 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
t = T * (sqrt(1 - (v / 3e8)^2))
T_ = T - t
m=(T_-1)*60
s=(m-22)*60
printf("\n Time lost per day is %d hours %d minute %d sec.",T_,m,s)
//Answer in the book:1 hr 22 min 12 sec
//Answer in the program:1.372583 e+00 hours
