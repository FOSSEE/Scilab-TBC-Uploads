//Initilization of variables
W1=40 //lb
W2=30 //lb
theta1=30 //degrees
//Calculations
//Summing the forces parallel to 30 degree plane
T=40*sind(theta1) 
theta=asind(T/W2) 
//Result
clc
printf('The tension in the cable is %flb and the angle theta is %f degrees',T,theta)
