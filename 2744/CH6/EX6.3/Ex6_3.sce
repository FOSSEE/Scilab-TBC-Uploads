clear;
clc;
b = 4;// inches
d = 9;// inches
l = 12;// feet
y_c = 1/4;// inches
E = 1.5*10^6;// lb/in^2
I = (1/12)*b*d^3;// in^4
W = y_c*384*E*I/(5*12^3*l^3);// inches
printf('Uniform distributed load, the beam should carry is, W = %d lb-wt',W);

//there is an error in the answer given in text book
