//Initilization of variables
m=50 //kg
vo=4 //m/s
vf=8 //m/s
t=6 //s
g=9.8 //m/s^2
r=0.8 //m
u=0.25 //coefficient of friction
I=30 //kg-m^2
//Calculations
Na=m*g //N
F=u*Na //N
//Angular Speeds
wo=vo/r //rad/s
wf=vf/r //rad/s
//Applying impulse momentum theorem
mb=(I*wf+m*vf*r-I*wo-m*vo*r+F*r*t)/(vo*r+g*r*t-vf*r) //kg
//Result
clc
printf('The mass of block B is %f kg',mb)
