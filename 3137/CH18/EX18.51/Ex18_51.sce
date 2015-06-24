//As the integration is indefinite we will directly consider the equation with R
//Initillization of variables
GM=1.41*10^16 //ft^3/s^2
r=2640000 //ft
theta=60 //degrees
R=21120000 //ft
//Calculations
v1=sqrt((GM*((1/R)-(1/(R+r))))/2.031) //ft/s
//Result
clc
printf('The speed required will be %f ft/s',v1)
