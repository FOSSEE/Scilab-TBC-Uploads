clc
clear
//Input data 
t=5;//The time taken for a body to cool from 80 to 64 degree centigrade in minutes 
t11=80;//The initial temperature of the body in degree centigrade 
t12=64;//The final temperature of the body in degree centigrade 
t21=52;//The temperature of the body after 10 minutes in degree centigrade  
T=10;//The time taken for a body to cool from 80 to 52 degree centigrade in minutes 
T1=15;//To find the temperature after the time in minutes 

//Calculations 
ts=((t21*t11)-(t12^2))/(t11+t21-(2*t12));//The temperature of the surroundings in degree centigrade 
K=(log((t21-ts)/(t12-ts)));//The constant value for the first case at ts 
x=((exp(K))*(t21-ts))+ts;//The temperature after the next 15 minutes in degree centigrade 

//Output
printf('(1)The temperature of the surroundings is %3.0f degree centigrade \n (2)The temperature after the 15 minutes is %3.0f degree centigrade ',ts,x)
