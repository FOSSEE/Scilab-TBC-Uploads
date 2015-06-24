//Initilization of variables
f=50 //cps
g=386 //in/s^2
E=30*10^6 //lb/in^2
l=4 //in
I=2.08*10^-6 //in^4
//Calculations
W=(3*E*I*g)/(((f*2*%pi)^2)*l^3) //lb
//Result
clc
printf('The value of W is %f lb',W)
