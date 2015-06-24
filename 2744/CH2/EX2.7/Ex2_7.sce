clear;
clc;
a = 2;//inches
l = 6;//inches
E = 13000;//tons/In^2
m = 1/0.3;
P = 20;//tons
p_1 = P/a^2;//tons/in^2
p_2 = p_1/(2*(m-1));//tons/in^2
e_1 = (5-0.6*p_2)/E;//tons/in^2
del_l = e_1*l;//inches
printf('The contraction in the length del_l = %.5f inches',del_l);
