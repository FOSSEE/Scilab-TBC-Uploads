//Initilization of variables
u1=6 //ft/s
u2=-8 //ft/s
e=0.8 //coefficient of restitution
//Calculations
//Solving both simultaneous equations
A=[1,-1;1,1]
B=[11.2;-2]
C=inv(A)*B //ft/s
//Result
clc
printf('The velocities are v1=%f ft/s and v2=%f ft/s',C(2),C(1)) 
