clc 
// Given that
N  =25 // No. of bridges per cm^2
r = 0.1 // Radius of bridge in mm
rho = 2e-5 // Resistivity of the material in ohm-cm
v= 5 // Applied voltage in V
// Sample Problem 2 on page no. 288
printf("\n # PROBLEM 5.2 # \n")
Rc = 0.85*rho/(N*%pi*r*0.1)
Q = (v^2)/Rc
printf("\n Rate of heat generated per unit area = %e W/cm^2",Q)
// Answer in the book is given as 1.136e5 W/cm^2
