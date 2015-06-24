clear;
clc;

//page no. 288

T = 100;//degreeF
d = 3;// inches
Re = 80000;// Reynolds number
e = 0.006;//inches
l = 1000;//ft
f = 0.0255;//friction factor
V = 2.33;//fps
h_L = f*(l/0.25)*(V^2 /(2*32.2));
printf('Head loss expected = %.1f ft',h_L);
