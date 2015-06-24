clear;
clc;
A = 15.625;// in^2
Z1 = 61.75;// in^3
Z2 = 14.63;// in^3
d = sqrt(4*A/%pi);// inches
Z3 = (%pi/32)*d^3;// in^3
R1 = Z1/Z3;
R2 = Z2/Z3;
printf('If the strength of the solid circular section is taken as unity,\n that of the rectangular section is %.2f and of the I-section it is %.2f.',R2,R1);
