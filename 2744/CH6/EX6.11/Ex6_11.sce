clear;
clc;
l = 3;// feet
b = 3;// inches
t = 3/8;// inches
W = 1500;// lb.
f = 12;// tons/in^2
E = 30*10^6;// tons/in^2
M_max = W*l*12/4 ;// lb-inches
M_r = f*(1/6)*b*t^2 *2240;// lb-inches
n = M_max/M_r ;// no. of plates
n = round(n+1);
f = M_max/(n*(1/6)*b*t^2);// lb/in^2
R = E/(2*f/t) ;// inches
delta = (l*12)^2 /(8*R);// inches
printf('Number of plates required, n = %d',n);
printf('\n The central deflection, delta = %.4f inch.',delta);
printf('\n The initial radius to which the plates must be bent, R = %.3f inches',R);
