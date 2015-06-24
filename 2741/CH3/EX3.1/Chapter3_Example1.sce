clc
clear
//Input data
T=5;//Time taken for a liquid to cool from 80 to 50 degree centigrade in minutes
t11=80;//The initial temperature of the liquid in degree centigrade 
t12=50;//The final temperature of the liquid in degree centigrade 
t21=60;//If the initial temperature of the liquid in degree centigrade 
t22=30;//If the final temperature of the liquid in degree centigrade 
ts=20;//The temperature of the surrounding in degree centigrade 

//Calculations 
T1=((log((t22-ts)/(t21-ts)))/(log((t12-ts)/(t11-ts))))*T;//The time taken for the liquid to cool from 60 to 30 degree centigrade in minutes

//Output
printf('The time taken for a liquid to cool from 60 to 30 degree centigrade is t = %3.0f minutes ',T1)
