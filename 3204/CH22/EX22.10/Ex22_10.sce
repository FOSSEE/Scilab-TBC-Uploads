// Initilization of variables
L=1 // m // length of rod AB
m=10 // kg // mass of the rod
g=9.81 
theta=30 // degree
// Calculations
// solving eq'n 4 for omega we get,
omega=sqrt(2*16.82*sind(theta)) // rad/s
// Now solving eq'ns 1 &3 for alpha we get,
alpha=(12/7)*g*cosd(theta) // rad/s
// Components of reaction are given as,
R_t=((m*g*cosd(theta))-((m*alpha*L)/4)) // N
R_n=((m*omega^2*L)/(4))+(m*g*sind(theta)) // N
R=sqrt(R_t^2+R_n^2) // N 
// Results
clc
printf('(a) The angular velocity of the rod is %f rad/sec \n',omega)
printf('(b) The reaction at the hinge is %f N \n',R)
