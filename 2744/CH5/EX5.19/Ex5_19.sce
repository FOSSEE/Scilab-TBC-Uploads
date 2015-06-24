clear;
clc;
b1 = 16;// inches
d1 = 6;// inches
b2 = 9;// inches
d2 = 7;// inches
A = 14.71;// in^2
I_xx1 = 618.09;// in^4
I_yy1 = 22.47;// in^4
I_xx2 = 208.13;// in^4
I_yy2 = 40.17;// in^4
I_xx = I_xx1 + 2*I_yy2;// in^4
I_yy = I_yy1 + 2*(I_xx2 + A*(b2/2 + 0.5*0.4)^2);// in^4
k_xx = sqrt(I_xx/(3*A));// inches
k_yy = sqrt(I_yy/(3*A));// inches
printf('I_xx = %.2f in^4\n I_yy = %.2f in^4\n k_xx = %.2f inches\n k_yy = %.2f inches',I_xx,I_yy,k_xx,k_yy);
