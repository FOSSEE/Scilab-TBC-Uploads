clear;
clc;

//page no.48

A = 4000;// sq.ft
d1 = 10;// feet
d2 = 2;// inches
rho = 64;// lb/cuft
W = A*(d2/12)*rho;// lb
printf('Weight of cargo = %d lb',W);

//there is an error in the answer given in textbook
