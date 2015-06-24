clear;
clc;

//page no. 161

d = 1;// in
p = 100;// psi
T = 10;// degreeF
p_i = 80;//psi
p_b = 14.7;//psi
p1 = 16520;// psfa
gam1 = 0.553;// lb/cuft
k = 0.874;
G = (0.5*k*0.25*%pi*(d/12)^2 /(1-(2/3)^4)) *sqrt(2*32.2*(p-p_i)*144/gam1);
printf('flow rate = %.2f lb/sec',G);
