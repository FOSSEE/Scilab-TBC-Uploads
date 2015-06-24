clc
clear
//Input data 
T=300;//Temperature of the earth as a black body in K
s=20.52*10^-8;//Stefan Boltzmann constant in kJ/hr m^2 T^4

//Calculations 
Q=s*T^4;//Heat received by unit area on the earths surface perpendicular to solar rays in kJ/hr

//Output
printf('Heat received by the unit area of earths surface Q = %3.2f kJ/hr',Q)
