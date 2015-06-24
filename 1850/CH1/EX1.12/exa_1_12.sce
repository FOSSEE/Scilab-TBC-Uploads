// Exa 1.12
clc;
clear;
close;
// Given data
V_D1=0.7;// in volt
V_D2=V_D1;
V_BE= 0.7;// in volt
Bita= 100;
R3=180;// in ohm
V_EE= 15;// in volt
V_CC=15;// in volt
R_C=470;// in ohm
V_B3= -V_EE+V_D1+V_D2;// in volt
V_E3= V_B3-V_BE;// in volt
I_E3= (V_E3-(-V_EE))/R3;// in amp

// Part (i)
I_CQ= I_E3/2;// in amp
I_CQ= I_CQ*10^3;// in mA
I_CQ= ceil(I_CQ);
I_E=I_CQ;
disp(I_CQ,"Quiescent current in mA")
V_CEQ= V_CC + V_BE - I_CQ*10^-3*R_C;// in volt
disp(V_CEQ,"Value of V_CEQ in volt");
re_desh= 26/I_E;// in ohm
// Part(ii)
A_d = R_C/(re_desh);
disp(A_d,"Differential Voltage gain");
// part(iii)
R_in1= 2*Bita*re_desh;// in ohm
disp(R_in1*10^-3,"Input resistance in k ohm");


