clear;
clc;
t = 5/8;// inch
d = 1;// inch
p = 4;// inches
f_t = 28; //tons/in^2
f_s = 20; //tons/in^2
f_b = 40; //tons/in^2
P_t = (p-d)*t*f_t;// tons
P_s = 2*2*0.25*%pi*d^2 *f_s;// tons
P_b = 2*d*t*f_b;//tons
P = p*t*f_t;// tons
n = min(P_t,P_s,P_b)/P ;// efficiency
printf('The efficiency of the joint = %.3f or %.1f percentage',n,n*100);
