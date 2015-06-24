// Initilization of variables
M_1=10 // kg // mass of the 1st block
M_2=5 // kg // mass of the 2nd block
mu=0.25 // coefficient of friction between the blocks and the surface
g=9.81 // m/s^2 // acc due to gravity
// Calculations
a=g*(M_2-(mu*M_1))/(M_1+M_2) // m/s^2 // from eq'n 5
T=M_1*M_2*g*(1+mu)/(M_1+M_2) // N // from eq'n 6
// Results
clc
printf('The acceleration of the masses is %f m/s^2 \n',a)
printf('The tension in the string is %f N \n',T)
