//Initilization of variables
w=10 //lb/ft
L=12 //ft
theta=30 //degrees
//Calculation
//Matrix Calculations
A=[cosd(30) -cosd(30);sind(30) sind(30)] 
B=[0;120] 
X=inv(A)*B
//Result
clc
printf('The tension in the cable is %i lb and the reaction at B is %i lb', X(1) ,X(2))
