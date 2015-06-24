//Initilization of variables
theta=45 //degrees
mu1=1/4 //coefficient of friction between A and B
mu2=1/3 //coefficient of friction between A and Floor
ma=14 //kg
mb=9 //kg
g=9.81 //m/s^2
//Calculations
//Summing forces in vertical direction
Nb=mb*g //N
//Also
Fprimeb=mu1*Nb //N
//Summing forces in direction
T=Fprimeb //N
//Considering the fig(c)
//Summing forces in the horizontal direction and vertical direction and solving by matrix method 
A=[-cosd(theta) mu2;sind(theta) 1] //N
B=[-Fprimeb;(mb*g+ma*g)] //N
R=inv(A)*B //N
//Result
clc
printf('The value of P and Na are %fN and %fN respectively',R(1),R(2))
