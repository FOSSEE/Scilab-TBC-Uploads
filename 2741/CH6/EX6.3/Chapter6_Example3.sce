clc
clear
//Input data 
t=27;//The room temperature of air in degree centigrade 
g=1.4;//Adiabatic index 

//Calculations 
V1=1;//Let the Original volume in cc 
V2=V1/2;//The final volume i.e half the original volume in cc 
P1=1;//The atmospheric pressure in atms 
P2=P1*(V1/V2)^g;//The final pressure in atms 
T1=t+273;//The room temperature in K 
T2=T1*(V1/V2)^(g-1);//The final temperature in K 
T21=T2-273;//The final temperature in degree centigrade 

//Output
printf('(1)The final pressure is P2 = %3.3f atmospheres \n (2)The final temperature is T2 = %3.1f K  (or)  %3.1f degree centigrade ',P2,T2,T21)

