clc
clear
//Page number 482
//Input data 
p=50;//The reduced pressure in atmospheres 
t=27;//The initial temperature of the gas in degree centigrade 
a=1.32*10^12;//Van der Waal constant a in cm^4 dynes/mole^2
b=31.2;//Van der Waal constant b in cm^3/mole
Cp=7;//The specific heat at constant pressure in cal/mole-K 

//Calculations 
P=p*76*13.6*980;//The reduced pressure in dynes/cm^2 
Cp1=Cp*4.2*10^7;//The specific heat at constant pressure in ergs/mole-K 
T=t+273;//The initial temperature of the gas in K 
R=8.31*10^7;//The real gas constant in ergs/mole-K 
dT=(P/Cp1)*(((2*a)/(R*T))-b);//The drop in temperature in K or degree centigrade 

//Output 
printf('The drop in temperature produced by adiabatic throttling process is %3.3f K  (or) %3.3f degree centigrade ',dT,dT)

//Error . There is a change in the result compared to the textbook because the final calculations did in the textbook went wrong , so the final result varied from the textbook 
