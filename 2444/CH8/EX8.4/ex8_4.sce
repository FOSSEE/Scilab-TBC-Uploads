// Exa 8.4
clc;
clear;
close;
format('v',6)
// Given data
R11 = 4;// in k ohm
R21 = 20;// in k ohm
h_ie = 1.1;// in k ohm
R_C1=4;// in k ohm
R22= 10;// in k ohm
R12= 2;// in k ohm
Zb = h_ie;// in k ohm
Zin = (R11*R21*Zb)/( (R11*R21)+(R21*Zb)+(Zb*R11) );// in k ohm
disp(Zin,"The input impedance in k ohm is");
h_oe = 0;// unit less
Q2 = %inf;// output impedance of transistor
R_C2 = 2;// in k ohm
// Zout= 1/h_oe || R_C2 = R_C2
Zout = R_C2;// in k ohm
disp(Zout,"The output impedance in k ohm is");
h_fe = 50;// unit less
R_L = 10;// in k ohm
Av2= -h_fe/h_ie*(R_C2*R_L/(R_C2+R_L));// voltage gain of second stage
Rac1= 1/(1/R_C1+1/R22+1/R12+1/h_ie);// in k ohm
Av1= -h_fe/h_ie*Rac1;// voltage gain of first stage
Av= Av1*Av2;// overall voltage gain 
disp(Av,"The overall voltage gain is : ")

