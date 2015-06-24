clear;
clc;
l = 50;// feet
b = 4;// feet
P = 3;// tons per foot run
t = 1/2;// inches
b1 = 4;// inches
d1 = 4;// inches
h1 = 1/2;// inches
d = 7/8;// inches
f_s = 6;// tons/in^2
f_b = 12;// tons/in^2
P_s = 2*0.25*%pi*d^2 *f_s;// tons
P_b = t*d*f_b;// tons
R = P_b;// tons
F = l*P*2/d1;// tons
p_min = R*(l-0.5*b1)/F ;// inches
printf('The minimum pitch required is p = %.2f inches, say %d inches',p_min,p_min);
