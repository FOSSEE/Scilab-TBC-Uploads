clear;
clc;
d = 7/8;// inches
t = 1/2;// inches   
f_t = 6;// tons/in^2
f_s = 5;// tons/in^2
f_b = 10;// tons/in^2
p_s = 2*0.25*%pi*d^2*f_s;// tons
P_b = d*t*f_b;// tons
p_t_limit = 2*P_b/3 + d;// inches
n = (p_t_limit-d)/p_t_limit;// efficiency
printf('Pitch, p = %.3f inches',p_t_limit);
printf('\n Efficiency = %.3f or %d percentage',n,n*100);

//the answer is approximated in the textbook.
