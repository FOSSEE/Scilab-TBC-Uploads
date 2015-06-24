clear;
clc;
b = 12;// inches
d = 6;// inches
h = 14;// inches
t = 1/2;// inch
A = 12.94;// in^2
//section moment of inertia
I_xx_s = 315.3;// in^4
I_yy_s = 22.27;// in^4

I_xx = 2*I_xx_s + 2*((1/12)*h*(2*t)^3 + h*2*t*(d+t)^2);// in^4
I_yy = 2*(I_yy_s + A*(d/2)^2) + 2*((1/12)*2*t*h^3);// in^4
printf('I_xx = %.2f in^4\n I_yy = %.2f in^4',I_xx,I_yy);
