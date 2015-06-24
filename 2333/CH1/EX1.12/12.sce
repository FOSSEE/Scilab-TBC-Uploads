clc 
// Given that
l_0 = 1// let initial length of rod in m
c = 3e8 // speed of light in m/s
v = 0.8*c //  speed of frame of reference in m/s
// Sample Problem 12 on page no. 29
printf("\n # PROBLEM 12 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2)  \n")
l = l_0*sqrt(1-(v/c)^2) // apparent length of rod in m
change_l_per = 100*(l_0-l)/l_0
printf("\n Percentage contraction in length is %d percent. ",change_l_per)

