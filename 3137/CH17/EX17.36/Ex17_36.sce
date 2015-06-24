//initilization of variables
u=0.25 //coefficient of friction
k=2800 //N/m
x=0.075 //m
g=9.8 //m/s^2
m=7 //kg
theta=30 //degrees
//Calculations
//Normal Reaction
N=g*m*cosd(theta) //N
//Frictional Force
Fr=u*N //N
//Component of force along the plane
F=g*m*sind(theta) //N
//Spring work is
W=0.5*k*x*x //N.m
s=(W+Fr*x-F*x)/(F-Fr) //m
S=round(s*1000) //mm
//Result
clc
printf('The value of S is %i mm',S) 
