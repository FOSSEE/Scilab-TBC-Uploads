clc
clear
//Input data 
p=2;//Given Pressure of a motor car tyre in atms 
t=27;//The room temperature in degree centigrade 
g=1.4;//Adiabatic index 

//Calculations 
P1=p;//The pressure of a motor car tyre in atms 
T1=t+273;//The room temperature in K 
P2=1;//The surrounding pressure in atms 
T2=((P2/P1)^((g-1)/g))*T1;//The resulting temperature in K 
T21=T2-273;//The resulting temperature in degree centigrade 

//Output 
printf('The resulting temperature is T2 = %3.1f K  (or)  %3.1f degree centigrade ',T2,T21)
