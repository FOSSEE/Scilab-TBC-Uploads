// Exa 6.9
clc;
clear;
close;
// Given Data
fL= 200;// in Hz
fH= 1;// in kHz
fH=fH*10^3;// in Hz
//Let the capacitor C_desh be of 0.01 micro F 
C_desh= 0.01*10^-6;// in F
R_desh= 1/(2*%pi*fH*C_desh);// in ohm
R_desh=R_desh*10^-3;// in kohm
R_desh= 18;// in kohm
// Let 
C=0.05*10^-6;// in F
R= 1/(2*%pi*fL*C);// in ohm
R=R*10^-3;// in kohm
R= 18;// in k ohm
Rf= 10;// in kohm
disp(Rf,"Value of Rf, Rf_desh, R1 and R1_desh in kohm");
disp(R,"Value of R and R_desh in kohm");
disp(C_desh*10^6,"Value of C_desh in micro F")
disp(C*10^6,"Value of C in micro F")
