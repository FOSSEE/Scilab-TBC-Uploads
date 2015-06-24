//Initilization of variables
L=3.8 //m
w=10 //kg/m
P=1000 //N
t=0.8 //m
g=9.81 //m/s^2
//Calculations
Gf=L*w*g //N
A=(P*L+Gf*L*0.5)/t //N Taking moment about point B
B=(P*(L-t)+Gf*(0.5*L-t))/t //N Taking moment about point A
//Result
clc
printf('The reaction at point A and B are %f N and %f N respectively',A,B)
//Decimal accuracy causes discrepancy in answers compared to the textbook
