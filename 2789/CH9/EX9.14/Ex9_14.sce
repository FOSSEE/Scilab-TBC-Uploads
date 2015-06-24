clear;
clc;

//page no. 322

l = 200;//ft
Q = 0.1;//cfs
del_h = 5;//ft
T = 50;//degreeF
d = 0.187;//ft
V = Q/(0.25*%pi*d^2);
R = V*d/0.0000141;
f = (del_h*2*32.2/V^2 -(1+0.5))*(d/l);
printf('Required diameter of the pipe = %.2f in.',d*12);
