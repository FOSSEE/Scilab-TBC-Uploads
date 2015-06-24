// Exa 6.6
clc;
clear;
close;
// Given Data
R= 10;// in k ohm
R=R*10^3;// in ohm
R_desh= R;// in ohm
C=0.1;// in micro F
C=C*10^-6;// in F
C_desh=0.0025;// in micro F
C_desh=C_desh*10^-6;// in F
fH= 1/(2*%pi*R_desh*C_desh);// in Hz
disp(fH*10^-3,"Higher cut-off frequency in kHz")
fL= 1/(2*%pi*R*C);// in Hz
disp(fL,"Lower cut-off frequency in Hz")
BW= fH-fL;
disp(BW*10^-3,"Bandwidth in kHz")
