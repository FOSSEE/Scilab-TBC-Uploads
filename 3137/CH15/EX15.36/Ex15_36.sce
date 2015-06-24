//Initilization of variables
//The integration involves variables hence the direct formula is being used in this coding
m=500 //kg
R=0.25 //m
h=0.5 //m
//Calculations
Ix=(3/10)*m*R^2 //kg.m^2
Iy=(3/5)*m*((1/4)*R^2+h^2) //kg.m^2
//Result
clc
printf('Hence proved that Ix=%fkg-m^2 and Iy=%fkg-m^2',Ix,Iy) 
