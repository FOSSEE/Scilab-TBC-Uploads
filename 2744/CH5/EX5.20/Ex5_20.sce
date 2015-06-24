clear;
clc;
b1 = 7/2;// inches
d1 = 7/2;// inches
t1 = 3/8;// inches
l = 18;// inches
I_xx1 = 2.80;// in^4
I_yy1 = 2.80;// in^4
J = 1;// inch
A = 2.49;// in^2
I_xx = 4*(I_xx1 + A*(l/2 - J)^2);// in^4
k_xx = sqrt(I_xx/(4*A));// inches
printf('I_xx = %.2f in^4\n k_xx = %.1f inches',I_xx,k_xx);
