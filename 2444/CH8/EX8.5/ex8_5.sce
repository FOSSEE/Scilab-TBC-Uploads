// Exa 8.5
clc;
clear;
close;
format('v',6)
// Given data
R1 = 10;// in k ohm
R2 = 5;// in k ohm
Zb = 1;// in k ohm
Zin = (R1*R2*Zb)/( (R1*R2)+(R2*Zb)+(Zb*R1) );// in k ohm
disp(Zin,"The input impedance in k ohm is");
R_C1 = 2;// in k ohm
R_E1 = 2;// in k ohm
R_C2 = 2;// in k ohm
R_E2 = 2;// in k ohm
h_oe = 0;// unit less
Q2 = %inf;// output impedance of transistor
//Zout= 1/h_oe || R_C2
Zout = R_C2;// in k ohm
disp(Zout,"The output impedance in k ohm is");
h_fe = 100;// unit less
h_ie = 1;// in k ohm
R_ac=0.222;// in k ohm
Av2= -h_fe/h_ie*R_C2;// voltage gain of second stage
Rac1= 1/(1/R_C1+1/R1+1/R2+1/h_ie);// in k ohm
Av1= -h_fe/h_ie*R_ac;// voltage gain of first stage
Av= Av1*Av2;// overall voltage gain 
disp(Av,"The overall voltage gain is : ")
