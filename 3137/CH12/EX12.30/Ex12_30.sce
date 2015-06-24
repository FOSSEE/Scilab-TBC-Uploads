//Initilization of variables
wb=40 //rpm
we=60 //rpm
t1=5 //s using different symbol to avoid conflict in decleration
t=2 //s
r=2 //ft
//Calculations
alpha=(((we*2*%pi)/60)-((wb*2*%pi)/60))/t1 //rad/s^2
w=((wb*2*%pi)/60)+alpha*t //rad/s
//Components of acceleration are
a_t=r*alpha //ft/s^2
a_n=r*w^2 //ft/s
//result
clc
printf('The tangential and normal acceleration\n are %f rad/s^2 and %frad/s^2 respectively',a_t,a_n) 
