clear;
clc;
p_res = 6;//tons/in^2
p_dash = 4;//tons/in^2
theta = 30*%pi/180;//degrees
p_n = 4;//tons/in^2
p = p_res*cos(theta);//tons/in^2
q = p_res*sin(theta);//tons/in^2
L = 2*q/(p-p_dash);
theta = 0.5*atan(2*q/(p-p_dash));
theta1 = theta*180/%pi;//degrees
theta2 = theta1+90;//degrees
p_1 = 0.5*(p+p_dash)+sqrt(q^2 + 0.25*(p-p_dash)^2);//tons/in^2
p_2 = 0.5*(p+p_dash)-sqrt(q^2 + 0.25*(p-p_dash)^2);//tons/in^2
p_max = 0.5*(p_1-p_2);//tons/in^2
printf('Theta1 = %.2f degrees and Theta2 = %.2f degrees',theta1,theta2);
printf('\n p_1 = %.2f tons/in^2.,tensile\n p_2 = %.2f tons/in^2.,tensile',p_1,p_2);
printf('\n The maximum shear intensity will be %.2f tons/in^2 across the planes of maximum shear.',p_max);
