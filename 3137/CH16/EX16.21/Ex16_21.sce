//initilization of variables
W=16.1 //lb
v=9 //ft/s
phi=30 //degrees
r=0.5 //ft
g=32.2 //ft/s^2
OG=4.5 //ft
//Calculations
//Using equations of motion
an=v^2/OG //ft/s^2
//Solving for alpha we get
N=(W/g)*an+W*cosd(phi) //lb
//Using equations of motion
A=[1,-r;-1,-r*r]
B=[W*sind(phi);0]
C=inv(A)*B
F=C(1) //lb
at=C(2) //ft/s^2
//Result
clc
printf('The value of N and F are %f lb and %f lb respectively',N,F)
