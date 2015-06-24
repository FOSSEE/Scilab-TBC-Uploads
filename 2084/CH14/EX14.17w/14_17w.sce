//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.17w
//calculation of the terminal velocity of the rain drop

//given data
r=.01*10^-3//radius(in m) of the drop
eta=1.8*10^-5//coefficient of viscosity(in N-s/m^2) of the air
rho=1.2//density(in kg/m^3) of the air
rho0=1000//density(in kg/m^3) of the water
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//at terminal velocity.........6*%pi*eta*r*v = (4/3)*%pi*r^3*rho*g
v=(2*r^2*rho0*g)/(9*eta)//terminal velocity

printf('the terminal velocity of the rain drop is %3.1f cm/s^2',v*10^2)
