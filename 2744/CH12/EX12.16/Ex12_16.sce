clear;
clc;
s = 1/4;// inch
n = 12;// no. of coils
D = 3;// inches
f_s = 45000;// lb/in^2
N = 12*10^6;// lb/in^2
T = 0.208*f_s*s^3;// lb-inches
W = T/(0.5*D);// lb-wt
theta = 7.11*T*%pi*D*12/(N*s^4);//rdaians
delta = 0.5*D*theta;// inches
printf('Maximum possible axial load is W = %.1f lb-wt',W);
printf('\n Deflection, delta = %.3f inches',delta);

//there is a minute error in the answer given in textbook.
