//Initilization of variables
m=60 //kg
me=660 //kg
a=6 //m/s^2
g=9.8 //m/s^2
//Calculations
//Using equations of motion
P=m*a+m*g //N
//Scale reading
R=P/g //kg
//Increase in mass
I=R-m //kg
//Tension
T=me*a+me*g //N
//Result
clc
printf('The value of P is %f N \n Apparent icrease in weight is %f kg\n Tension in the cable is %f N.',P,I,T)
//Answer in the textbook is off by 28 //N in Tension
