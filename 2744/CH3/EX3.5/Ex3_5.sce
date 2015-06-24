clear;
clc;
d = 2;//inches
l = 8;//feet
U = 50;// ft-lbs
E = 28*10^6;// lb/in^2
V = 0.25*%pi*d^2*l*12;// in^3
p = sqrt(2*U*12*E/V);// lb/in^2
e = p/E;
del_l = e*l*12;// inches
printf('Maximum instantaneous stress produced is p = %d lb/in^2',p);
printf('\n Maximum instantaneous extension produced is del_l = %.4f inches',del_l);
//there is an error in the answer given in text book
