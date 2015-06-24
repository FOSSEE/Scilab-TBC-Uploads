// Exa 2.29
clc;
clear;
close;
format('v',7)
// Given data
R1 = 10;// in ohm
R2 = 20;// in ohm
R3 = 60;// in ohm
R4 = 30;// in ohm
E1 = 120;// in V
E2 = 60;// in V
R_T = ((R2*R3)/(R2+R3)) + R4+R1;// in ohm
I_T = E1/R_T;// in A
I1 = (R3/(R2+R3))*I_T;// in A
R_T = ( ((R1+R4)*R2)/((R1+R4)+R2) ) + R3;// in ohm
I_T = E2/R_T;// in A
I2 = ((R1+R4)/(R1+R4+R2))*I_T;// in A
// current through R2 resistor 
I= I1+I2;// in A
disp(I,"The current through R2 resistor in A is");
