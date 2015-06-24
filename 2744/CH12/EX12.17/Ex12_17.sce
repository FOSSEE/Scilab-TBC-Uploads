clear;
clc;
d = 3/8;// inches
n = 12;//no. of complete turns
D = 4;// inches
W = 50;// lb-wt
N = 12*10^6;// lb/in^2
E = 30*10^6;// lb/in^2
M = 75;// lb-inches
I = (%pi/64)*d^4;// in^4
Z = 2*I/d;// in^3
f = M/Z ;// lb/in^2
phi = M*%pi*D*12/(E*I);// radians
n_ = (phi/(2*%pi)) + n;// increase in no. of turns
printf('The bending stress is f = %d lb/in^2',f);
printf('\n n_new = %.5f turns',n_);

//there are minute errors in the answers given in textbook.
