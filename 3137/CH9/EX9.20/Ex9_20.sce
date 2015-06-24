//Initilization of variables
m=900 //kg
mu=0.2 //coefficient of friction
g=9.8 //m/s^2
//Calculations
T2=m*g/(exp(2*2*%pi*mu)) //N
//Result
clc
printf('The force needed to hold the mass is %fN',T2)
