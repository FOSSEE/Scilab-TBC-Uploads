clear;
clc;
w = 4;//tons
v = 2;//miles per hour
l = 150;//feet
d = 3/2;//inches
E = 13000;// tons/in^2
g = 32;// ft/sec^2
A = 0.25*%pi*d^2;// in^2
KE = w*(v*17.6)^2/(2*g*12);// inch-tons
p = sqrt(KE*(2*E)/(A*l*12));// tons/in^2
del_l = p*l*12/E;// inches
printf('Maximum instantaneous stress produced is p = %.2f tons/in^2',p);
printf('\n Maximum instantaneous extension produced is del_l = %d inch',del_l);
