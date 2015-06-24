// Initilization of variables
m=5 //kg // mass of the bock
g=9.81 // m/s^2 // acceleration due to gravity
theta=15 // degree // angle made by the forces (P1 & P2) with the horizontal of the block
mu=0.4 //coefficient of static friction
//Calculations
// Case 1. Where P1 is the force required to just pull the bock
// Solving eqn's 1 & 2 using matrix
A=[cosd(theta) -mu;sind(theta) 1]
B=[0;(m*g)]
C=inv(A)*B
// Calculations 
// Case 2. Where P2 is the force required to push the block
// Solving eqn's 1 & 2 using matrix
P=[-cosd(theta) mu;-sind(theta) 1]
Q=[0;(m*g)]
R=inv(P)*Q
// Results
clc
printf('The required pull force P1 is %f N \n',C(1))
printf('The required push force P2 is %f N \n',R(1))
