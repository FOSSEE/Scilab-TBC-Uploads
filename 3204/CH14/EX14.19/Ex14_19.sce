// Initilization of variables
M_1=150 // kg // mass of the 1st block
M_2=100 // kg // mass of the 2nd block
mu=0.2 // coefficient of friction between the blocks and the inclined plane
g=9.81 // m/s^2 // acc due to gravity
theta=45 // degree // inclination of the surface
// Calculations
// substuting the value of eq'n 3 in eq'n 1 & solving for T,we get value of T as,
T=((M_1*M_2*g)*(sind(theta)+2-(mu*cosd(theta))))/((4*M_1)+(M_2)) // N
// Results
clc
printf('The tension in the string during the motion of the system is %f N \n',T)
