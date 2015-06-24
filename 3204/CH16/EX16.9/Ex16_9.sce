// Initilization of variables
m=5 // kg // mass of the collar
k=500 // N/m // stiffness of the spring
AB=0.15 // m // Refer the F.B.D for AB
AC=0.2 // m // Refer the F.B.D for AC
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the respective F.B.D
// POSITION 1: 
P.E_1=m*g*(AB)+0 
K.E_1=0
E_1=P.E_1+K.E_1 //
// POSITION 2 : Length of the spring in position 2
CB=sqrt(AB^2+AC^2) // m 
// x is the extension in the spring
x=CB-AC // m
// On substuting and Equating equations of total energies for position1 & position 2 we get the value of v as,
v=sqrt(((E_1-((1/2)*k*x^2))*2)/m) // m/s
// Results
clc
printf('The velocity of the collar will be %f m/s \n',v)
// The answer given in the text book (v=16.4 m/s) is wrong.
