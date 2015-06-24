clear;
clc;
B = 5;// inches
D = 12;// inches
t1 = 0.55;// inches
t2 = 0.35;// inches
f = 15/2;// tons/in^2
l = 16;// feet
b = B-t2;// inches
d = D-2*t1;// inches
I_xx = (B*D^3 - b*d^3)/12;// in^4
Z = I_xx/6;// in^3
M_r = f*Z;// ton-inches
W = M_r/(l*12/8);// tons
w = W/l;// ton per foot run
printf('W = %.2f tons\n w = %.2f ton per foot run',W,w);
