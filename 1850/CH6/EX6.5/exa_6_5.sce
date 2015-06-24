// Exa 6.5
clc;
clear;
close;
// Given Data
R= 2.1;// in k ohm
R=R*10^3;// in ohm
R1= 20;// in k ohm
R1=R1*10^3;// in ohm
Rf= 60;// in k ohm
Rf=Rf*10^3;// in ohm
C=0.05;// in micro F
C=C*10^-6;// in F
fL= 1/(2*%pi*R*C);// in Hz
disp(fL*10^-3,"Low cut-off frequency in kHz")
