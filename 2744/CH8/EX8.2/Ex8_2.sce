clear;
clc;
d1 = 12;//inches
t = 1;//inch
d2 = d1-2*t;//inches
P = 5;//tons
e = 12;//inch
A = 0.25*%pi*(d1^2-d2^2);//sq.in
M = P*e;//ton-in
Z = %pi*(d1^4-d2^4)/(32*d1);//in^3
p_0 = P/A;// tons/in^2
p_b = M/Z;// ton/in^2
p_max = p_0+p_b;// tons/in^2
p_min = p_0-p_b;// tons/in^2
printf('p_max = %.4f ton/in^2.,cmopressive\n p_min = %.4f ton/in^2.,\n i.e., %.4f ton/in^2., tensile',p_max,p_min,-p_min);
