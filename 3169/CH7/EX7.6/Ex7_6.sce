//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.6
//calculation of ohmic value of shunt an its dimensions

//given data
I=50*10^3//impulse current (in A)
Vm=50//voltage(in V) drop across shunt
B=10*10^6//bandwidth(in Hz) of the shunt
mu0=4*%pi*10^-7//magnetic permeability(in H/m) of free space

//calculation
R=Vm/I//resistance of shunt
L0=1.46*R/B
mu=mu0//in this case ...mu = mu0 * mur ~mu0
rho=30*10^-8//resistivity(in ohm m) of the tube material
d=sqrt((1.46*rho)/(mu*B))//thickness of the tube(in m)
l=10^-1//length(in m) (assume)
r=(rho*l)/(2*%pi*R*d)

printf('The value of resistance is %d milliohm',round(R*10^3))
printf('\nThe length of shunt is %d cm',l*100)
printf('\nThe radius of shunt is %3.1f mm',r*10^3)
printf('\nThe thickness of shunt is %3.3f mm',d*10^3)
