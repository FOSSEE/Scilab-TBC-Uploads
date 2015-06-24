//Initilization of variables
m=1 //kg
g=9.81 //m/s^2
t1=45 //degrees
t2=30 //degrees
//Calculations
//Solving as system of linear equations
A=[1 0 -cosd(t1) 0;0 1 0 3/5;-5 g*m*cosd(t1)*cosd(t2) 0 0;-1 0 0 4/5]
B=[0;g*m;g*m*5*cosd(t1)*cosd(t2);0]
C=inv(A)*B
//Result
clc
printf('The forces are Nb=%fN Nc=%fN Tc=%fN Tb=%fN',C(1),C(2),C(3),C(4)) 
