// Initilization of variables
m=5 // kg // mass of the ball
k=500 // N/m // stiffness of the spring
h=10 // cm // height of drop
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the respective F.B.D.
// In eq'n 1 substitute the respective values and simplify it further. In this eq'n of 2nd degree a=1 b=-0.1962 & c=-0.01962. Thus the roots of the eq'n is given as,
a=1 
b=-0.1962
c=-0.01962
delta=((-b+(sqrt((b^2)-(4*a*c))))/(2*a))*(10^2) // cm // We consider the +ve value of delta
// Results
clc
printf('The maximum deflection of the spring is %f cm \n',delta)
