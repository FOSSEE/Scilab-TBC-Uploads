clear;
clc;
d = 6;//inches
b = 3/4;//inch
P = 18;//tons
e = 1/8;//inch
A = b*d;//sq.in
M = P*e;//ton-in
Z = (1/6)*b*d^2;//in^3
p_0 = P/A;// tons/in^2
p_b = M/Z;// ton/in^2
p_max = p_0+p_b;// tons/in^2
p_min = p_0-p_b;// tons/in^2
printf('p_max = %.1f tons/in^2.,tensile\n p_min = %.1f tons/in^2.,tensile',p_max,p_min);
