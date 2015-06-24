clear;
clc;
W = 5;// cwt
n = 18;// no. of coils
delta = 9;// inches
d = 1;// inch
D = 8;// inches
N = 6000;// tons/in^2
P = (delta*N*d^4)/(64*n*(0.5*D)^3);// tons
h = (0.5*P*delta*20/W)-delta;// inches
printf('The height of drop h = %.3f inches',h);
