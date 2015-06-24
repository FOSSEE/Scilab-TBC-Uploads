//Initilization of variables
L=14 //feet
W=18 //lb
theta1=60 //degrees
theta2=30 //degrees
L1=10 //ft
//Calculations
//Taking moment about point B
Rd=(W*(L/2)*cosd(theta1)*cosd(theta2))/L1 //lb
//Summing all the forces in the horizontal direction
T=Rd*cosd(theta2) //lb
//Result
clc
printf('The value of Rd and T is %f lb and %f lb respectively',Rd,T)
