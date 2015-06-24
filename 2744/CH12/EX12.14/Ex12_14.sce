clear;
clc;
W = 2;// tons
v = 4;// miles per hour
n = 18;// no. of coils
delta = 9;// inches
N = 6000;// tons/in^2
d = 1;// inch
D = 8;// inches
KE = 12*(W*(v*44/30)^2)/(2*32);// inch-tons
P = (delta*N*d^4)/(64*n*(0.5*D)^3);// tons
E = 0.5*P*delta;// inch-tons
m = KE/E ;// no. of springs required
printf('The number of springs required m = %d',round(m));
