//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.9
//calculation of the value of the coefficient of viscosity of the solution

//given data
d=2*10^-3//diameter(in m) of the air bubble
sigma=1750//density(in kg/m^3) of the solution
v=.35*10^-2//rate of flow(in m/s)
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
r=d/2//radius of the air bubble
//force of buoyancy is........B = (4/3)*%pi*r^3*sigma*g
//viscous force is............F = 6*%pi*eta*r*v
//above two forces are equal,thus we get
eta=(2*r^2*sigma*g)/(9*v)//coefficient of viscosity

printf('the value of the coefficient of viscosity of the solution is %d poise',round(eta*10))//0 1 poise = .1 N-s/m^2
