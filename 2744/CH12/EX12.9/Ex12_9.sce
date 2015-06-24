clear;
clc;
d = 4;//inches
T = 30;// ton-inches
M = 20;//ton-inches
m = 1/0.3;
f_s = 16*T/(%pi*d^3);// tons/in^2
f_b = 32*M/(%pi*d^3);// tons/in^2
theta = 0.5*atan(T/M);// radians
theta1 = theta*180/%pi;
theta2 = theta1+90;
f1 = 0.5*f_b + sqrt(f_s^2 + 0.25*f_b^2);// tons/in^2
f2 = 0.5*f_b - sqrt(f_s^2 + 0.25*f_b^2);// tons/in^2
Ee = f1 - (f2/m);// tons/in^2
f = sqrt(f1^2 + f2^2 - 2*f1*f2/m);// tons/in^2
printf('Maximum strain is Ee = %.3f tons/in^2',Ee);
printf('\n Maximum strain energy is f = %.3f tons/in^2',f);
