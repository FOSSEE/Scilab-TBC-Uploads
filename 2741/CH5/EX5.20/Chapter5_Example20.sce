clc
clear
//Input data 
t1=0;//The given temperature in degree centigrade 

//Calculations 
T1=t1+273;//The given temperature in K 
T2=(1/2)^2*T1;//The temperature at which the r.m.s velocity of a gas be half its value at 0 degree centigrade in K 
T21=T2-273;//The required temperature in degree centigrade 

//Output
printf('The required temperature is  T2 = %3.2f K  (or) %3.2f degree centigrade ',T2,T21)
