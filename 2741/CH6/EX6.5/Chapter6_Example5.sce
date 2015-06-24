clc
clear
//Input data 
g=(5/3);//Adiabatic index for monoatomic 
t=27;//The room temperature in degree centigrade 
P1=1;//The initial pressure in atmosphere 
P2=50;//The final pressure in atmosphere 

//Calculations 
T1=t+273;//The room temperature in K 
T2=((P2/P1)^((g-1)/g))*T1;//The final temperature in K 
T21=T2-273;//The final temperature in degree centigrade 

//Output
printf('The Final temperature is T2 = %3.0f K  (or)  %3.0f degree centigrade ',T2,T21)
