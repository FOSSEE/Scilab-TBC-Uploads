// Exa 1.13
clc;
clear;
close;
// Given data
Bita_ac= 100;
Bita_dc= Bita_ac;
V_BE=0.715;// in volt
V_D1= V_BE;
R3=2.7*10^3;// in ohm
R_C=4.7*10^3;// in ohm
V_EE=10;//in volt
V_CC= 10;// in volt
V_Z= 6.2;// in volt
I_ZT= 41;// in mA
I_ZT=I_ZT*10^-3;// in amp
V_B3= -V_EE+V_Z+V_D1;// in volt
V_E3= V_B3-V_BE;// in volt
I_E3= (V_E3-(-V_EE))/R3;// in amp
// I_CQ1= I_CQ2= I_CQ= I_E3/2
I_CQ= I_E3/2;// in amp
I_CQ1=I_CQ;
I_CQ2=I_CQ1;
I_E=I_CQ;
V_CEQ= V_CC + V_BE - I_CQ*R_C;// in volt

// Part (c)
// Thus Q_point= (I_CQ,V_CEQ)
disp("Operating point values are : "+string(I_CQ*10^3)+" mA and "+string(V_CEQ))
re_desh= (26*10^-3)/I_E;// in ohm

// Part(a)
A_d= R_C/re_desh;
disp(A_d,"Voltage gain");

// part(b)
R_in= 2*Bita_ac*re_desh;// in ohm
disp(R_in*10^-3,"Input resistance in k ohm");

