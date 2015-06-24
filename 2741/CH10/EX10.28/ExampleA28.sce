clc
clear
//Page number 483
//Input data 
K=24*10^-3;//The coefficient of thermal conductivity of an oxygen molecule in J/m.s.K 
Cv=20.9*10^3;//The specific heat at constant volume in J/kilo.mole.K 
k=1.38*10^-23;//The boltzmanns constant in J/K 
m=5.31*10^-26;//The mass of an oxygen molecule in kg 
T=273;//The temperature of the molecule in K 
pi=3.142;//Mathematical constant of pi 

//Calculations 
C=((3*k*T)/m)^(1/2);//The velocity of the molecule in m 
r=(((3*k*T*m)^(1/2)*Cv)/(3*2^(1/2)*pi*K))^(1/2);//The radius of an oxygen molecule in m 

//Output 
printf('The radius of an oxygen molecule is  %3.4g m ',r)

//Error . There is a change in the result compared to the textbook because the final calculations did in the textbook went wrong , so the final result varied from the textbook 
