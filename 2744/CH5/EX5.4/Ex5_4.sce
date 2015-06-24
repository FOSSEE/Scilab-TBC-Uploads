clear;
clc;
d = 20;// inches
I = 1673;// inch units
W = 3/4;// ton per foot run
f = 8;// tons/in^2
Z = I/(d/2);// inch-units
M_r = f*Z;// ton-inches
l = sqrt(M_r*32/(3*12));//feet
printf('The maximum permissible span for this beam is l = %.2f feet',l);
