// Initilization of variables
m=15 // kg // mass of the disc
D=0.3 // m // diameter of the disc
R=0.15 // m // radius
l=1 // m // length of the shaft
d=0.01 // m // diameter of the shaft
G=30*10^9 // N-m^2 // modulus of rigidity
// Calculations
// M.I of the disc about the axis of rotation is given as,
I=(m*R^2)/2 // kg-m^2
// Stiffness of the shaft
k_t=(%pi*d^4*G)/(32*l) // N-m/radian
t=2*%pi*sqrt(I/k_t) // seconds
// Results
clc
printf('The time period of oscillations of the disc is %f seconds \n',t)
