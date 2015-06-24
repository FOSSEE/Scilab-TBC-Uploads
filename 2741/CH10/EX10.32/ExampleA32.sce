clc
clear
//Page number 484
//Input data 
T=5800;//The temperature of the sun in K 

//Calculations 
r=7*10^8;//The radius of the sun in m 
pi=3.142;//The mathematical constant of pi 
A=4*pi*r^2;//The surface area of the sun in m^2
s=5.672*10^-8;//Stefans constant in SI units 
U=A*s*T^4;//The total energy emitted by sun per second in J 
r1=1.5*10^11;//The distance of the earths atmosphere from the sun in m 
R=(U/(4*pi*r1^2))/1000;//Energy reaching the top of earths atmosphere in kW/m^2

//Output
printf('The total radiant energy emitted by sun per second is  %3.4g J \n The rate at which energy is reaching earths atmosphere is  %3.1f kW/m^2 ',U,R)
