// Initilization of variables
M_A=100 // kg // mass of block A
M_B=150 // kg // mass of block B
mu=0.2 // coefficient of friction between the blocks and the surface
x=1 // m // distance by which block A moves
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the respective F.B.D
// Applying the principle of work and energy to the system of blocks A&B and on simplifying we get the value of v as,
v=sqrt(((-mu*M_A*g)+(M_B*g))/(125)) // m/s 
// Results
clc
printf('The velocity of block A is %f m/s \n',v)
