clc 
// Given that
d = 50 // Diameter of the steel sheet in mm
t = 3 // Thickness of the steel sheet in mm
e = 1.75 // True fracture strain
Y = 2.1e3 // True fracture stress for the material in N/mm^2
// Sample Problem 12 on page no. 149
printf("\n # PROBLEM 3.12 # \n")
C_0 = (t/(1.36*exp(e)))*((2*exp(e))-1)/((2.3*exp(e))-1)
p = t*(1/2.45)*((1.9*exp(e))-1)/((2.56*exp(e))-1)
F = Y*C_0*%pi*d
W = (1/2)*(F)*(p)*(10^-3)
printf("\n The proper clearance between die and punch = %f mm, \n Maximum punching force = %f N, \n Energy required to punch the hole = %f J",C_0,F/1000,W)
// Answer in the book given as 45.74 J for energy required to punch the hole
 
