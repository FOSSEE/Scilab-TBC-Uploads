//Caption:Calculate the scattering matrix.
//Exa:6.9
clc;
clear;
close;
VSWR=1;
In_loss=0.5;//in dB
S_21=10^(-In_loss/20);
Isolation=20;//in dB
S_12=10^(-Isolation/20);
S_23=S_12;
S_31=S_12;
S_32=S_21;
S_13=S_21;
p=(VSWR-1)/(VSWR+1);
S_11=p;
S_22=p;
S_33=p;
S=[S_11,S_12,S_13;S_21,S_22,S_23;S_31,S_32,S_33];
disp(S,'Scattering matrix =');