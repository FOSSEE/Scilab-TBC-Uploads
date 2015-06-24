clc
clear
//Page number 493
//Input data 
t1=27;//The initial temperature of the gas in degree centigrade 
g=1.4;//The adiabatic index 
p1=1;//Let the initial pressure in atmospheres 
p2=2*p1;//The final pressure in atmospheres 

//Calculations 
T1=t1+273;//The initial temperature of the gas in K 
T2=(((p2/p1)^(g-1))*(T1)^g)^(1/g);//The final temperature of the gas in K 
T=T2-T1;//The rise in temperature of a gas in K or degree centigrade 

//Output
printf('The rise in temperature is  %3.1f degree centigrade ',T)

