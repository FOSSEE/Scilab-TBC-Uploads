// Initilization of variables
m=5 // kg // mass of the ball
k=500 // N/m // stiffness of the spring
h=0.1 // m // height of vertical fall
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the respective F.B.D
// On equating the total energies at position 1 & 2 we get eq'n of delta as,
delta=sqrt((2*m*g*h)/(k)) // m 
// Results
clc
printf('The maximum compression of the spring is %f m \n',delta)
