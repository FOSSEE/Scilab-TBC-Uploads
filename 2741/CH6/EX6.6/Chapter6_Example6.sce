clc
clear
//Input data 
t=27;//The temperature of dry air in degree centigrade 
g=1.4;//Adiabatic index 

//Calculations 
V1=1;//Let us assume the initial volume in cc 
V2=V1/3;//Then the final volume is 1/3 of the initial volume in cc 
T1=t+273;//The initial temperature of dry air in K 
T2=((V1/V2)^(g-1))*T1;//The final temperature of air in K 
T21=T2-273;//The final temperature of air in degree centigrade 
T=T21-t;//The change in temperature in degree centigrade 

//Output
printf('(1)When the process is slow the temperature of the system remains constant so, there is no change in the temperature \n (2)When the compression is sudden then, \n The temperature of the air increases by T = %3.1f degree centigrade  (or) %3.1f K',T,T)
