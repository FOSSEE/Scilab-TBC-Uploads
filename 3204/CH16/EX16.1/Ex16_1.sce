// Initilization of variables
k=1000 // N/m // stiffness of spring
x_1=0.1 // m // distance upto which the spring is stretched
x_2=0.2 // m 
x_0=0 // initial position of spring
// Calculations
// Work required to stretch the spring by 10 cm from undeformed position is given as,
U_10=-(k/2)*(x_1^2-x_0^2) // N-m 
// Work required to stretch from 10 cm to 20 cm is,
U=-(1/2)*k*(x_2^2-x_1^2) // N-m
// Results
clc
printf('The work of the spring force is %f N-m \n',U_10)
printf('The work required to stretch the spring by 20 cm is %f N-m \n',U)
