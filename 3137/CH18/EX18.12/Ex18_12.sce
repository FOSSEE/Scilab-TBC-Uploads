//Initilization of variables
m1=40 //kg
m2=10 //kg
m3=15 //kg
v0=2.5 //m/s
vf=5 //m/s
t=12 //s
u=0.1 //coefficient of friction
g=9.8 //m/s^2
theta=45 //degrees
//Calculations
//Applying Impulse-Momentum Theoroem
P=(((m1+m2+m3)*(vf-v0))+(t*(-m2*g*sind(theta)+u*g*m2*cosd(theta)+u*g*m3+g*m1)))/t //N
//Result
clc
printf('The value of P is %f N',P)
