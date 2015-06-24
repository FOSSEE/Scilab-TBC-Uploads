//Initilization of variables
M=70 //kg
ko=0.4 //m
ri=0.45 //m
ro=0.6 //m
theta=30 //degrees
m=35 //kg
g= 9.8 //m/s^2
//Calculations
I=M*ko^2 //kg-m^2
//Using Equations of motion
//Solving the equations by matrix method
A=[-1,-m*0.15,0;1,-M*ro,-1;-ri,-I,ro]
B=[-m*g;M*g*sind(theta);0]
C=inv(A)*B
F=C(3) //N
Na=M*g*cosd(theta) //N
//Required coefficient of friction
u=F/Na //coefficient of friction
//Result
clc
printf('The value of alpha is %f rad/s^2 and Tension is %f N\n F=%f N and Na=%f N also u=%f',C(2),C(1),F,Na,u)
