clc
clear 
//Input data 
g=1.4;//Adiabatic index 

//Calculations 
V1=1;//Let the initial volume be in cc 
V2=V1/2;//The final volume is half the initial volume in cc 
T1=1;//Let the initial temperature of air be in K 
T2=T1*(V1/V2)^(g-1);//The final temperature of air in K 
T=T2-T1;//The change in temperature of air in K 

//Output 
printf('The change in the temperature is %3.3fT1 K ',T)
