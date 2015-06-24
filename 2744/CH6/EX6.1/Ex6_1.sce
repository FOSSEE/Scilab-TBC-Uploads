clear;
clc;
l = 5;// feet
W = 150;// lb
w = 120;// lb. per foot run
l1 = 3;// feet
b = 3;// inches
d = 6;// inches
E = 1.5*10^6;// lb/in^2
I = (1/12)*b*d^3;// in^4
y_B1 = (W*l^3)/(3*E*I);// feet
y_B2 = (w*l1*l1^3)/(8*E*I) + (l-l1)*(w*l1*l1^2)/(6*E*I);// feet
y_B = (12^3)*(y_B1+y_B2);// inches
printf('The deflection at the free end = %.4f inches',y_B);
