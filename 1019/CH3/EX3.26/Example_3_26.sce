//Example 3.26
clear;
clc;

//Given
Cp=4.2;//specific heat at constant pressure in J/K g
delH=10^7;//heat in J
T1=310;//initial temperature (K)
m=70000;//mass of the man in g
delHvap=2405;//latent heat of vapourization of water in J/g
//(a) To determine temterature after 24 hours
T2=(delH+(m*Cp*T1))/(m*Cp);//temperature after 24 hours in Kelvin
t2=T2-273;//temperature in degree Celsius
mprintf('(a) Temperature after 24 hours = %i oC',t2);

//(b) To determine the amount of water evaporated to maintain temperature
m=(delH*1)/delHvap;//mass of water in g
M=m/1000;//mass of water in kg
mprintf('\n (b) mass of water evaporated to maintain temperature = %f kg',M);
//end