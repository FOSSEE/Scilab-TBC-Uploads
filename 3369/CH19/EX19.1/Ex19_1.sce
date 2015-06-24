//Chapter 19,Example 1,page 665
//Determine the sepration between the particles
clear
clc
// Based on the equations 19.6, 19.7, 19.8, 19.9 and 19.10
E = 8*10^5 // V/m
qm = 10*10^-6 // C/kg, qm = q/m
y = -1 // m
t = (1*2/9.8)
x = 1/2*qm*E*t
printf("\n The seperation between the particles = %f m",2*x)

// Answers may vary due to round off error
