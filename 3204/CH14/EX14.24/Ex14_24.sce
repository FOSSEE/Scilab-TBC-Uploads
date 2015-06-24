// Initilization of variables
M=15 // kg // mass of the wedge
m=6 // kg // mass of the block
theta=30 // degree // angle of the wedge
g=9.81 // m/s^2 // acc due to gravity
// Calculations
a_A=((m*g*cosd(theta)*sind(theta))/((M)+(m*(sind(theta))^2)))/(g) // g // By eliminating R_1 from eq'n 1&3.
// Here, assume a_r is the acceleration of block B relative to wedge A which is given by substuting a_A in eq'n 2
a_r=(((g*sind(theta))*(m+M))/((M)+(m*(sind(theta))^2)))/(g) // g
// Results
clc
printf('(a) The acceleration of the wedge is %f g \n',a_A)
printf('(b) The acceleration of the bock relative to the wedge is %f g \n',a_r)
