clear;
clc;

//page no. 48

gam = 53.0;// lb/cuft
D = 17;// inches
d = 12;// inches
V = (%pi/6)*(D/12)^3;
V1 = 0.584;//cuft
V2 = 0.711;//cuft
W = V*gam;
F_B = V1*62.4;
F_ACA = (V2)*62.4;
F = W+F_ACA-F_B;
printf('The force exerted between sphere and orfice plate = %.1f lb',F);

//there is an error in the answer given in textbook
