clear;
clc;
t = 3/8;// inches
p2 = 7/2;// inches
f_t = 11/2;// tons/in^2
f_s = 5;// tons/in^2
f_b = 12;// tons/in^2
d = 1.2*sqrt(t);// inches
//d = 0.735, say 0.75 inches
d = 0.75;// inches
P_s = 0.25*%pi*d^2 *f_s;// tons
P_b = d*t*f_b;//tons
P_t_limit = P_s;//tons
p_limit = P_s/(t*f_t) + d;// inches
//p_limit = 1.763, take p = 1.75
p = 1.75;// inches
n = (p-d)/p;// efficiency
printf('The efficiency of the joint = %.1f percentage',n*100);
