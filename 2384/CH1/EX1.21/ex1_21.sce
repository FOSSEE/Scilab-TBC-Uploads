// Exa 1.21
clc;
clear;
close;
format('v',6)
// Given data
V= 100;// in V
R12 = 3;// in ohm
R31 = 2;// in ohm
R23 = 4;// in ohm
R4= 6;// in ohm
R5=2;// in ohm
R6= 5;// in ohm
R1 = (R12*R31)/(R12+R23+R31);// in ohm
R2 = (R31*R23)/(R12+R23+R31);// in ohm
R3 = (R23*R12)/(R12+R23+R31);// in ohm
R_S= R6+R1;// in ohm
R_P1= R2+R4;// in ohm
R_P2= R3+R5;// in ohm
R_P= R_P1*R_P2/(R_P1+R_P2);// in ohm
R= R_P+R_S;// in ohm
I= V/R;// in A
disp(I,"The current drawn from the source in A is : ")
