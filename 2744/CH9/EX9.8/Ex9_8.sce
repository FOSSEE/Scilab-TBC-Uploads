clear;
clc;
D = 7;// inches
t = 3/4;// inches
l = 16;// feet
P = 12;// tons
e = 3/4;// inches
E = 6000;// tons/in^2
d = D-2*t;// inches
A = 0.25*%pi*(D^2 - d^2);// in^2
I = (%pi/64)*(D^4 - d^4);// in^4
p_0 = P/A;// tons/in^2
Z = 2*I/D;// in^3
M = P*e*sec(0.25*l*12*sqrt(P/(E*I)));// ton-inches
p_b = M/Z;// tons/in^2
p_max = p_0+p_b;// tons/in^2
p_min = p_0-p_b;// tons/in^2
//if tension is just on the point being induced in the section, p_b = p_0
e = p_0*t*Z/M;// inches
printf('Stress intensities, p_max = %.3f tons/in^2.,compressive\n    p_min = %.3f tons/in^2., compressive',p_max,p_min);
printf('\n Maximum possible eccentricity, e = %.2f inches',e);
