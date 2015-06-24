// Initilization of variables
M_1=5 // kg // mass of the 1st block
theta_1=30 // degree // inclination of the 1st plane
M_2=10 // kg // mass of the 2nd block
theta_2=60 // degree // inclination of the 2nd plane
mu=0.33 // coefficient of friction between the blocks and the inclined plane
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// solving eq'n 1 & 2 for a we get,
a=((((M_2*(sind(theta_2)-(mu*cosd(theta_2))))-(M_1*(sind(theta_1)+(mu*cosd(theta_1))))))*g)/(M_1+M_2) // m/s^2
// Results
clc
printf('The acceleration of the masses is %f m/s^2 \n',a)
