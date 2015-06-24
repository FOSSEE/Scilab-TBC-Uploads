//Initilization of variables
m=7 //kg
g=9.8 //m/s^2
r=0.5 //m
I=0.875 //kg.m^2
//Calculations
//Solving for alpha and T
alpha=(m*g*r)/(I+m*r*0.5) //rad/s^2
T=(I*alpha)/r //N
//Result
clc
printf('The soultion is alpha =%f rad/s^2 and T=%f N',alpha,T) 
