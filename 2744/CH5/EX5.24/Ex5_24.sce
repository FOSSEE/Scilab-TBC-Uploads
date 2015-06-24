clear;
clc;
b = 4;// inches
d = 13/2;// inches
t = 1/2;// inch
a = 4;// inches
F = 10;// tons
a1 = b*t;// in^2
y1 = t/2;// inch
a2 = (d-t)*t;// in^2
y2 = t+0.5*(d-t);// inches
y_bar = (a1*y1+a2*y2)/(a1+a2);// inches
I_AB = (1/3)*b*t^3 + (1/12)*t*(d-t)^3 + (b-2*t)*(b-t)^2;// in^4
I_xx = I_AB - (a1+a2)*y_bar^2;// in^4
q = (F/(b*I_xx))*b*t*(y_bar-0.5*t);// ton/in^2
q_max = (F/(t*I_xx))*(b*t*(y_bar-0.5*t) + 0.5*t*(y_bar-t)*(y_bar-t));// tons/in^2
printf('The maximum intensity of shear stress at the N.A is q_max = %.2f tons/in^2',q_max);
