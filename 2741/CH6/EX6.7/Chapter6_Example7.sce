clc
clear
//Input data 
g=1.4;//Adiabatic index 

//Calculations 
V1=1;//Let the initial volume of the gas in cc 
V2=3*V1;//Then the final volume of the gas is 3 times the initial volume of the gas in cc 
T1=273;//Initial temperature of the gas at NTP in K 
T2=((V1/V2)^(g-1))*T1;//The resulting temperature in K 
T21=T2-273;//The resulting temperature in degree centigrade 
P1=1;//The atmospheric pressure in atms 
P2=((V1/V2)^(g))*P1;//The resulting atmospheric pressure in atmosphere 

//Output
printf('(1)The resulting temperature is T2 = %3.0f K  (or)  %3.0f degree centigrade \n (2)The resulting pressure is P2 = %3.4f atmosphere ',T2,T21,P2)
