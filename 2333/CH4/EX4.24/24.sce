clc 
// Given that
m = 80 //  mass of sugar in gram
V = 1 // Volume of sugar in liter
theta = 9.9 // rotation of plane of polarization in degree
s = 66 // specific rotation of sugar in degree
l = 2 // length of Polari meter in decimeter  
// Sample Problem 24 on page no. 222
printf("\n # PROBLEM 24 # \n")
c = theta*1000/(l*s) // concentration of dissolved sugar
purity = c*V*100/m // purity percentage of solution 
printf("\n Standard formula used \n c = theta / (s * l). \n")
printf("\n Purity percentage of solution is %f percent.",purity)
