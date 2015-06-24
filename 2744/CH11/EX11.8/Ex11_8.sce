clear;
clc;
P = 150;; //tons
t = 3/4;// inches
d = 1;// inches
f_s = 6;// tons/in^2
f_b = 12;// tons/in^2
P_s = 0.25*%pi*d^2 *f_s;// tons
P_b = t*d*f_b;// tons
n = P/min(P_s,P_b);// no. of rivets required
printf('The number of rivets required, n = %.2f, say %d',n,round(n));
