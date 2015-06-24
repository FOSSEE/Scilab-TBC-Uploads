clear;
clc;
m = 15;
t = 18000;// lb/in^2
c = 700;// lb/in^2
b = 12;;// inches
M = 900000;//bending moment lb/inches
k1 = 1/((t/(m*c))+1);//k = n/d
k2 = 1-k1/3;//k2 = a/d
p = 0.5*c*k1/(t);
d = sqrt(M/(0.5*c*b*k1*k2));//inches
A_t = p*b*d;// sq.inches
A_t_previous = 0.25*%pi*(7/8)^2;//section area with diameter 7/8 inches
n = A_t/A_t_previous;
printf('Effective deapth is d = %.2f inches',d);
printf('\n A_t = %.3f sq.inches',A_t);
