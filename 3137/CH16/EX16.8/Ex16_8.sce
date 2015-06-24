//Initilization of variables
theta=30 //degrees
W=80 //lb
Ww=100 //lb
I=4 //slug-ft^2
r=0.5 //ft
v= 20 //ft/s
vo=0 //ft/s
g=32.2 //ft/s^2
//Calculations
//Using Equations of motion
//Solving the system of linear equatinons by matrix method
A=[-1,0,-W/g;1,-1,-Ww/g;0,r,-2*I]
B=[-W;Ww*sind(theta);0]
C=inv(A)*B
//Storing values in variables
T=C(1) //lb
F=C(2) //lb
a=C(3) //ft/s^2
//Time calculations
t=(v-vo)/a //s
//Result
clc
printf('The time required is %f s',t)
