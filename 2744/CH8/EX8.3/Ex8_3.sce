clear;
clc;
l = 6;//inches
b = 4;//inches
d = 1/2;//inch
P = 10;//tons
r = 1.5;//inches
A = 4.771;// in^2
J = 0.968;// inches
I_xx = 6.07;// in^4
I_yy = 8.64;// in^4
e = r-J;// inches
M = P*e;// ton-inches
y_t = J;//inches 
y_c = b-y_t;//inches
//compressive
p_c = M*y_c/I_xx;// tons/in^2
//tensile
p_t = M*y_t/I_xx;// tons/in^2
//compressive
p_0 = P/A ;// tons/in^2
p_max = p_0+p_c;// tons/in^2
p_min = p_0-p_t;// tons/in^2
printf('p_max = %.3f tons/in^2.,compressive\n p_min = %.3f tons/in^2.,compressive',p_max,p_min);
