// Exa 6.3
clc;
clear;
close;
// Given Data
f_H= 1;// in kHz
f_H= f_H*10^3;// in Hz
C=0.0047;// in micro F
C=C*10^-6;// in F
C_desh= C;
R= 1/(2*%pi*f_H*C);// in ohm
R=R*10^-3;// in kohm
R=floor(R);
R_desh= R;
R1=R ;// in k ohm
Rf= 0.586*R1;// in k ohm
Rf= ceil(Rf);// in k ohm
disp(R,"Value of R in k ohm");
disp(C*10^6,"Value of R in micro F");
disp(R1,"Value of R1 in k ohm");
disp(Rf,"Value of Rf in k ohm");
