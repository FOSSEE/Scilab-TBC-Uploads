// Exa 6.11
clc;
clear;
close;
// Given Data
fL= 200;// in Hz
fH= 1;// in kHz
fH=fH*10^3;// in Hz
fc= sqrt(fL*fH);// in Hz
Q= fc/(fH-fL);
disp(Q,"The value of Q for filter")
