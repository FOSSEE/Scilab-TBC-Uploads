clear;
clc;
d = 3;// feet
t = 1/4;// inches
del_V = 9;// cub. inches
E = 30*10^6;// lb/in^2
PR = 0.3;// poisson's ratio
V = (%pi/6)*(12*d)^3;// in^3
k = del_V/V;
f = k*E/(3*(1-PR));// lb/in^2
p = 4*f*t/(12*d);// lb/in^2
printf('The pressure exerted by fluid on the shell, p = %d lb/in^2',p);

//there is a minute calculation error in the answer given in text book
