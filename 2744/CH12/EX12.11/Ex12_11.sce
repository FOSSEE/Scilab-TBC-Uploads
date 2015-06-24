clear;
clc;
D = 12;// inches
d = 6;// inches
HP = 2400;
RPM = 80;
M = 40;// ton-feet
P = 25;// tons
PR = 0.3;//poisson's ratio
A = 0.25*%pi*(D^2 - d^2);// in^2
Z = (%pi/32)*(D^4 - d^4)/D;// in^3
J = (%pi/16)*(D^4 - d^4)/D;// in^3
p_0 = P/A ;// ton/in^2
p_b = M*12/Z ;// tons/in^2
f_b = p_0 + p_b;//tons/in^2
f_s = HP*33000*12/(2*%pi*RPM*2240*J);// tons/in^2
theta = 0.5*atan(2*f_s/f_b);// radians
theta1 = theta*180/%pi;// degrees
theta2 = theta1+90;//degrees
f_1 = 0.5*f_b + sqrt(f_s^2 + 0.25*f_b^2);//tons/in^2
f_2 = 0.5*f_b - sqrt(f_s^2 + 0.25*f_b^2);//tons/in^2
f = sqrt(0.25*f_b^2 + f_s^2);// tons/in^2
Ee = f_1 - PR*f_2;// tons/in^2
printf('The maximum principal stresse are f_1 = %.3f tons/in^2.,compressive \n      f_2 = %.3f tons/in^2., tensile',f_1,-f_2);
printf('\n theta1 = %.1f degrees\n theta2 = %.1f degrees',theta1,theta2);
printf('\n The maximum shear intensity = %.3f tons/in^2',f);
printf('\n Maximum strain is, Ee = %.3f tons/in^2',Ee);

//there are minute errors in the answers given in textbook.
