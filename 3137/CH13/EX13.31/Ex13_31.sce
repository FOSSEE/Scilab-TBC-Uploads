//Initilization of variables
a=92.9*10^6 //mi
G=3.43*10^-8
T=365*24*3600 //s
c=5280
//Calculations
M=(4*%pi^2*a^3*c^3)/(G*T^2) //slugs
//Result
clc
printf('The mass of the sun is %f slugs',M)
