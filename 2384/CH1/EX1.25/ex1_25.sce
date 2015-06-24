// Exa 1.25
clc;
clear;
close;
format('v',5)
// Given data
R1 = 6;// in ohm
R2 = 2;// in ohm
R3 = 2;// in ohm
R4 = 4;// in ohm
R5 = 4;// in ohm
R6 = 6;// in ohm
R12= R1*R2/(R1+R2);// in ohm
R34= R3*R4/(R3+R4);// in ohm
R56= R5*R6/(R5+R6);// in ohm
// Resistance between the point B and C
R_BC= (R12+R34)*R56/((R12+R34)+R56);// in ohm
disp(R_BC,"The resistance between the point B and C in ohm is : ")
