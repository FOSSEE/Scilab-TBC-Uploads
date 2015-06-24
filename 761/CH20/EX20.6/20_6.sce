clc;
// page no 761
// prob no 20.6
NF_dB=1.5;// noise fig of a receiver
NF=10^(NF_dB/10);
// Equivalent noise temperature is giveb as
T_eq=290*(NF-1);
disp('K',T_eq,'Equivalent noise temperature is');