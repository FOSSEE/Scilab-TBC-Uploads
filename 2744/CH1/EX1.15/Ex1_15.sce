clear;
clc;
p = 8;//normal stress intensity in tons/in^2
theta = 35*%pi/180;//inclination of the section in degrees
P = p*cos(theta);//resultant stress intensity in tons/in^2
p_n = P*cos(theta);//normal stress intensity in tons/in^2
p_t = P*sin(theta);//tangential stress intensity in tons/in^2
p_max = 0.5*p;//maximum possible shear in tons/in^2
angle = 45;//inclination of these planes in degrees
printf('Resultant stress intensity = %.2f tons/in^2',P);
printf('\n normal stress intensity = %.2f tons/in^2',p_n);
printf('\n tangential stress intensity = %.2f tons/in^2',p_t);
printf('\n The maximum possible shear on any plane is %d tons/in^2',p_max);
printf('\n and these planes are inclined at %d degrees to the normal section.',angle);
