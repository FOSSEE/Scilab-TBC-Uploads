clc 
// Given that
a = 5 // Side of the square hole in mm
t = 4 // Thickness of tungsten plate in mm
d = 0.01 // Diameter of abraisive grains in mm
F = 3.5 // Force for feeding in N
A =25e-3 // Amplitude of tool oscillation in mm
f = 25e3 // Frequency in Hz
Hw = 6900 // Fracture hardness of WC in N/mm^2
// Sample Problem 1 on page no. 332
printf("\n # PROBLEM 6.1 # \n")
Z = (1/2)*(4*a^2)/(%pi*d^2)
lambda = 5
d1 = (d^2)
h_w = (sqrt((8*F*A)/(%pi*Z*d1*Hw*(1+lambda))))
Q = (2/3)*((d1*h_w)^(3/2))*Z*f*%pi
t = (a^2)*t/(Q*60)
printf("\n The approximate time required = %f min",t)
// Answer in the book is given as 13.66 min