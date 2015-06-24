clc
clear 
//Input data 
E=1.53*10^5;//The energy radiated from an iron furnace in calories per hour 
A=10^-4;//The cross section area of an iron furnace in m^2 
e=0.8;//The relative emittance of the furnace 
t=3600;//The time in seconds 
s=1.36*10^-8;//Stefans constant in cal/m^2-s-K^4 

//Calculations 
T=((E)/(A*e*s*t))^(1/4);//The temperature of the furnace in K 

//Output 
printf('The temperature of the furnace is T = %3.0f K ',T)
