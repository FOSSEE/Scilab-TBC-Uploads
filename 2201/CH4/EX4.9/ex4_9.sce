//Exa 4.9
clc;
clear;
close;
// Given data
I=5;// in µA
V=10;// in V
T1= 0.11;// in °C^-1
T2= 0.07;// in °C^-1
// Io+I_R=I                            (i)
// dI_by_dT= dIo_by_dT      (ii)
// 1/Io*dIo_by_dT = T1 and 1/I*dI_by_dT = T2, So
Io= T2*I/T1;// in µA
I_R= I-Io;// in µA
R= V/I_R;// in MΩ
disp(R,"The leakage resistance in MΩ is : ")
