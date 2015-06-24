clc
clear
//Input data
t1=30;//Normal temperature of black body in degree centigrade
t2=100;//Heated temperature of black body in degree centigrade
s=20.52*10^-8;//Stefan Boltzmann constant in kJ/hrK^4
A=1;//Assume area in m^2

//Calculations
T1=273+t1;//Black body temperatures in kelvin K
T2=273+t2;//Heated temperature of black body in kelvin K
E=s*(T2^4-T1^4);//Increase of emissive power in kJ/hr

//Output
printf('The change in its emissive power E= %3.4f kJ/hr',E)
