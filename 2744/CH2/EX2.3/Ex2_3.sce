clear;
clc;
d = 3/4 ;//inches
P = 2;//tons
Q = 0.5;//tons
m = 4;
A = 0.25*%pi*d^2;//in^2
p = P/A ;//tons/in^2
q = Q/A;//tons/in^2
theta = 0.5*atan(2*q/p);//radians
theta1 = theta*180/%pi;//degrees
theta2 = theta1+90;//degrees
printf('The inclination of principal planes to the axis of the bolt will be %.2f degress and %.2f degrees respectively',theta1,180-theta2);
printf('\n The inclination of maximum shear planes to the axis of the bolt will be %.2f degress and %.2f degrees respectively',theta1+45,180-theta2-45);
p_1 = 0.5*p+sqrt(0.25*p^2+q^2);//tons/in^2
p_2 = 0.5*p-sqrt(0.25*p^2+q^2);//tons/in^2
p_max = 0.5*(p_1-p_2);//tons/in^2
p_s = p_1-(p_2/m);//tons/in^2 
printf('\n The principal stresse are given by p_1 = %.2f tons/in^2.,tensile\n  p_2 = %.2f tons/in^2\n  p_2 = %.2f tons/in^2 .,compressive',p_1,p_2,-p_2);
printf('\n Maximum shear stress is p_max = %.2f tons/in^2',p_max);
printf('\n The stress which acting alone will produce the same maximum strain is given by, %.2f tons/in^2',p_s);

//there is an error in the answer given in text book
