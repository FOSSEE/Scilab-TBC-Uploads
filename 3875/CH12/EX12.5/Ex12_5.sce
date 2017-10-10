clc;
clear;
m=9.1*10^-31 //mass in kg
h=6.63*10^-34 //Plancks constant in J-s
v=10^5 //velocity in m/s

//calculation
E=(m*v^2)/2
gam=(2*%pi*sqrt(2*m*E))/h //in m^-1
d=1/gam

mprintf("The penetration distance of the electron is = %1.2e m or 1.16 nm",d)
