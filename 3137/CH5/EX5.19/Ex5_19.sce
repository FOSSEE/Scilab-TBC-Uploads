//Initilization of variables
r=0.5 //m
m=10 //kg
g=9.81 //m/s^2
theta=60 //degrees
//Calculations
//Due to symmetry the reaction will be shared by the structure
A=m*g*0.5 //N
B=A //N
//Vertical forces summed
N1=m*g/(2*sind(theta/2)) //N
//Taking moment about point C
T=(N1*0.866+B*sind(theta*0.5))/(1.5*cosd(theta*0.5))
//Result
clc
printf('The value of N1 and T are %f N and %f N respectively',N1,T)
