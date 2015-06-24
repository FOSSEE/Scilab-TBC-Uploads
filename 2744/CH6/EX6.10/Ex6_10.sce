clear;
clc;
b = 18;// inches
d = 6;// inches
l = 16;// feet
W = 2;// tons
h = 1/2;// inches
I_xx = 841.76;// in^4
E = 13000;// tons/in^2
P = W + sqrt(2*W*h*48*E*I_xx/(l*12)^3 + 2*W);// tons
M_max = P*l*12/4;// ton-inches
Z = 2*I_xx/b ;// in^3
f = M_max/Z ;// tons/in^2
delta = P*(l*12)^3 /(48*E*I_xx);// inches
printf('The maximum instantaneous deflection delta = %.4f inches\n  and stress induced, f = %.3f tons/in^2',delta,f);
//there is an error in the answer given in text book
