clc
clear
//Page number 474
//Input data 
t1=27;//The initial temperature of the gas in degree centigrade 
T1=t1+273;//The initial temperature of the gas in K 
g=1.5;//The adiabatic index 
p=8;//The ratio of final pressure to the initial pressure 

//Calculations 
T2=((p)^((g-1)/g))*T1;//The final temperature of the gas in K 
T21=T2-273;//The final temperature of the gas in degree centigrade 

//Output
printf('The final temperature of the gas is T2 = %3.0f K  (or)  %3.0f degree centigrade ',T2,T21)
