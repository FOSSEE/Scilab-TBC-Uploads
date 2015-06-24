//Initilization of variables
m=18 //kg
d=0.6 //m
vo=3 //m/s
theta=20 //degrees
g=9.8 //m/s^2
//Calculations
//Moment of Inertia
I=0.5*m*(d/2)^2 //
//Applying Newtons second Law a
A=[1,m,0,0;0,0,1,0;d/2,0,0,-I;0,1,0,(-d/2)]
B=[g*m*sind(theta);g*m*cosd(theta);0;0]
C=inv(A)*B
//Storing the answers in variables
F=C(1) //N
ax=C(2) //m/s^2
Na=C(3) //N
alpha=C(4) //rad/s^2
//Time Calculations
v=0 //m/s^2
t=(vo)/ax //s
//Result
clc
printf('It takes %f s to reach the highest point of travel',t)
