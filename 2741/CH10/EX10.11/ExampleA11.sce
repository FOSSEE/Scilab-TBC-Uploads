clc
clear
//Page number 475
//Input data 
n=0.3;//The efficiency of a carnot engine 
t=27;//The temperature of the sink in degree centigrade 
n1=0.5;//The increased efficiency of a carnot engine 

//Calculations
T2=t+273;//The temperature of the sink in K 
T1=T2/(1-n);//The temperature of the source for 0.3 efficiency in K 
T11=T2/(1-n1);//The temperature of the source for 0.5 efficiency in K 
T=T11-T1;//The increase in temperature in K 

//Output
printf('The increase in temperature is T = %3.2f K ',T)
