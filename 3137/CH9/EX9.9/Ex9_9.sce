//Initilization of variables
theta=45 //degrees
m1=45 //kg
m2=135 //kg
g=9.81 //m/s^2
mu=0.25 //coefficient of riction
//Calculations
N2=m2*g //N
T=mu*N2 //N
N1=m1*g*cosd(theta) //N
Fprime1=N1*mu //N
P=T+Fprime1-(m1*g*sind(theta)) //N
//Result
clc
printf('The values are N2=%fN,T=%fN,N1=%fN,Fprime1=%fN and P=%fN',N2,T,N1,Fprime1,P)
