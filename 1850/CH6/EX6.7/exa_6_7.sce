// Exa 6.7
clc;
clear;
close;
// Given Data
fc= 1;// in kHz
fc=fc*10^3;// in Hz
Q=5;
Af=8;
// Let C=C1=C2=0.01 // in micro F
C1= 0.01;// in micro F
C1=C1*10^-6;// in F
C2=C1;// in F
C=C2;// in F
R1= Q/(2*%pi*fc*C*Af);// in ohm
R1=R1*10^-3;// in kohm
R1=ceil(R1);
R2= Q/(2*%pi*fc*C*(2*Q^2-Af));// in ohm
R2=R2*10^-3;// in kohm
R2=ceil(R2);
R3= Q/(%pi*fc*C);// in ohm
R3=R3*10^-3;// in kohm
R3=ceil(R3);
// The value of R2_desh required to change the centre frequency from 1 kHz to 2 kHz is
f_desh_c= 2000;// in Hz
R2_desh= R2*(fc/f_desh_c)^2;// in kohm
disp(R1,"Value of R1 in kohm");
disp(R2,"Value of R2 in kohm");
disp(R3,"Value of R3 in kohm");
disp(R2_desh,"Value of R2_desh in kohm");
