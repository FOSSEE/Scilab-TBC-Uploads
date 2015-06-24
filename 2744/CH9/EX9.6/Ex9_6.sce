clear;
clc;
b1 = 10;// inches
d1 = 7/2;// inches
r = 9/2;// inches
b2 = 12;// inches
d2 = 1/2;// inches
l = 20;// feet
n = 4;// factor of safety
A_s = 7.19;// in^2
I_xx1 = 109.42;// in^4
I_yy1 = 7.42;// in^4
d = 0.97;// inches
f_c = 21;// lb/in^2
a = 1/7500;
A = 2*A_s + 4*b2*d2;// in^2
I_xx = 2*I_xx1 + 2*((1/12)*b2*(2*d2)^3 + b2*(r+2*d2)^2);// in^4
I_yy = 2*(1/12)*(2*d2)*b2^3 + 2*(I_yy1 + A_s*(0.5*r+d)^2);// in^4
k = sqrt(min(I_xx,I_yy)/A);// minimum radius of gyration
P = f_c*A/(1+ a*((l*12)^2/k^2));// tons
P_safe = P/n;// tons
printf('The safe axial load = %d tons',round(P_safe));
