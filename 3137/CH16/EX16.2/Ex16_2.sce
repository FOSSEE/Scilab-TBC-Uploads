//Intilization of variables
W=600 //lb
d=30 //in
theta=25 //degrees
g=32.2 //ft/s^2
//Calculations
m=W/g //lb-s^2/ft
//Moment of inertia
I=0.5*m*((d/2)/12)^2 //lb-s^2-ft
//Applying Newtons law and coservation of angular momentum and rolling
//Solving by matrix method
A=[1,m,0,0;0,0,0,1;((d/2)/12),0,-I,0;0,1,-((d/2)/12),0]
B=[W*sind(theta);W*cosd(theta);0;0]
C=inv(A)*B
//Result
clc
printf('The Frictional Force is %f lb and the acceleration is %f ft/s^2',C(1),C(2))
