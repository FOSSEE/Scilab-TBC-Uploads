//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.8w
//calculation of the angle that the plank makes with the vertical in equilibrium

//given data
l=1//length(in m) of the planck
h=0.5//height(in m) of the water level in the tank 
s=0.5//specific gravity of the planck

//calculation
//A = OC/2 = l/(2*cosd(theta)
// mg = 2*l*rho*g
//buoyant force   Fb=(2*l*rho*g)/cosd(theta)
//m*g*(OB)*sind(theta) = F(OA)*sind(theta)
theta=acosd(sqrt(1/2))

printf('the angle that the plank makes with the vertical in equilibrium is %d degree',theta)
