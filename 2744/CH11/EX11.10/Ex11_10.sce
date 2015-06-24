clear;
clc;
P = 2.4;// tons
e = 18;// inches
n = 8;//no. of rivets
d = 7/8;// inches
h = 4;// inches
M = P*e;// ton-inches
d1 = 2;// 
d2 = 6;//
square_r_sum = h*((0.5*h)^2 + d2^2) + h*((0.5*h)^2 + d1^2);//
r = sqrt(40);
F = M*r/square_r_sum;// tons
theta = atan(d2/d1)//radians
theta1 = theta*180/%pi// degrees
V = (P/n) + F*cos(theta);// tons
H = F*sin(theta);// tons
R = sqrt(V^2 + H^2);// tons
f_s = R/(0.25*%pi*d^2);// tons/in^2
printf('The maximum shear intensity induced at any rivet is \n   f_s = %.2f tons/in^2',f_s);
