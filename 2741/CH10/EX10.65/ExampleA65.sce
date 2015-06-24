clc
clear
//Page number 505 
//Input data 
d=0.08;//The diameter of the black sphere in m 
T=500;//The temperature of the black sphere in K 
T0=300;//The temperature of the surroundings in K 
s=6*10^-8;//The stefans constant in W m^-2 K^-4 
pi=3.14;//The mathematical constant of pi 

//Calculations 
A=pi*d^2;//The area of the black sphere in m^2 
e=1;//The emittance of the black body 
R=s*A*e*(T^4-T0^4);//The rate at which energy is radiated in J/s or watts 

//Output 
printf('The rate at which energy is radiated R =  %3.2f J/s  (or) %3.2f watts',R,R)


