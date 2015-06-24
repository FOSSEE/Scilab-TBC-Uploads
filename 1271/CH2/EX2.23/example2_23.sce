clc 
// Given that
d = 4e-4 // separation between slits in meter
b = 8e-5 // slit-width in meter
// Sample Problem 23 on page no. 2.47
printf("\n # PROBLEM 23 # \n")
r = (b + d) / b // calculation for ratio of n with m
m1 = 1
n1 = r * m1 // calculation for Missing orders 
m2 = 2
n2 = r * m2 // calculation for Missing orders 
m3 = 3
n3 = r * m3 // calculation for Missing orders 
printf("\n Standard formula used \n r = (b + d) / b. \n n = r * m. \n")
printf("\n Missing orders = %d,%d,%d,......",n1,n2,n3)
