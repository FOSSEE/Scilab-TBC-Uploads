//Caption:Calculate the scattering matrix.
//Exa:6.7
clc;
clear;
close;
In_loss=0.5;//in dB
S_21=10^(-In_loss/20);
Isolation=30;//in dB
S_12=10^(-Isolation/20);
S_11=0;
S_22=0;
S=[S_11,S_12;S_21,S_22];
disp(S,'Scattering matrix =');