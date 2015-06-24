clc
clear
//Input data
t=5;//Time taken for a body to cool from 60 to 40 degree centigrade in minutes 
t11=60;//The initial temperature of the body in degree centigrade 
t12=40;//The final temperature of the body in degree centigrade  
ts=10;//The temperature of the surrounding in degree centigrade 

//Calculations 
K=log((t12-ts)/(t11-ts));//The constant value for the first case at ts 
x=((exp(K))*(t12-ts))+ts;//The temperature after the next 5 minutes in degree centigrade 

//Output
printf('The temperature after the next 5 minutes is x = %3.0f degree centigrade ',x)
