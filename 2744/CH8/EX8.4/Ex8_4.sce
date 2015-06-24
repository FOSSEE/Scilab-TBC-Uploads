clear;
clc;
b = 5;//inches
t = 1/2;//inch
P = 12;//tons
d = 1/2;//inch
r = 3/2;//inch
A = (b-d)*t;// in^2
p_0 = P/A;// tons/in^2
a1 = b*d;// in^2
x1 = 0;
a2 = d*t;// in^2
x2 = -3/2;
e = (a1*x1-a2*x2)/(a1-a2);//inches
M = P*e;// ton-inches
y_c = a1-e;// inches
y_t = a1+e;// inches
I_yy = (t*b^3)/12 - ((t*d^3)/12 + 0.5*d*r^2);// in^4
I_GG = I_yy - (a1-a2)*(e^2);// in^4
p_c = M*y_c/I_GG;// tons/in^2
p_t = M*y_t/I_GG;// tons/in^2
p_max = p_0 + p_t;// tons/in^2
p_min = p_0 - p_c;// tons/in^2
printf('p_max = %.1f tons/in^2., tensile\n p_min = %.2f tons/in^2., tensile',p_max,p_min);
