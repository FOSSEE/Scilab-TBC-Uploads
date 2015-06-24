//Initilization of variables
F1=100 //lb
R=16 //in
//Calculations
theta=asind(14/16) //degrees
N=100/sind(theta) //lb
P=N*cosd(theta) //lb
//Result
clc
printf('The value of normal reaction offered is %flb and the push required is %f lb',N,P)
