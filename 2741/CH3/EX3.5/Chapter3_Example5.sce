clc
clear
//Input data
t=6;//Time taken for a liquid to cool from 80 to 60 degree centigrade in minutes 
T=10;//To find the temperature after the time in minutes 
t11=80;//The initial temperature of the liquid in degree centigrade 
t12=60;//The final temperature of the liquid in degree centigrade  
ts=30;//The temperature of the surrounding in degree centigrade 

//Calculations 
K=(log((t12-ts)/(t11-ts)))/(-t);//The constant value for the first case at ts 
x=((exp(-T*K))*(t12-ts))+ts;//The temperature after the next 10 minutes in degree centigrade 

//Output
printf('The temperature after the next 10 minutes is x = %3.2f degree centigrade ',x)
