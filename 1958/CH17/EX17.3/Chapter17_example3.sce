clc
clear
//Input data
V=(70*10^3)//Accelerating potential in V
v=(3*10^8)//Velocity of light in m/s
c=(1.6*10^-19)//Charge of the electron in coloumbs
h=6.626*10^-34//Plancks constant in Js

//Calculations
lmin=((h*v)/(c*V))/10^-9//Shortest wavelength of X-rays produced in mm

//Output
printf('Shortest wavelength of X-rays produced is %3.4f mm',lmin)
