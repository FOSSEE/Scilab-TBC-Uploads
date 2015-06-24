// Initilization of variables
h=4 //m //height of the dam wall
rho_w=1000 // kg/m^3 // density of water
rho_c=2400 // kg/m^3 // density of concrete
g=9.81 // m/s^2
// Calculations
P=(rho_w*g*h^2)/2 // The resultant force due to water pressure per unit length of the dam
x=(2/3)*h //m // distance at which the resutant of the triangular load acts 
b=sqrt((2*P*h)/(3*h*rho_c*g)) // m // eq'n required to find the minimum width of the dam
// Results
clc
printf('The minimum width which is to be provided to the dam to prevent overturning about point B is %f m \n',b)
