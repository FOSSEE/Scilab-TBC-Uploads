//Caption:Determine the scattering parameters for 10 dB direction coupler
//Exa:6.3
clc;
clear;
close;
D=30;//in dB
VSWR=1;
C=10;
//p1_p4 = p1/p4
p1_p4=10^(C/-10);
S_41=sqrt(p1_p4);
S_14=S_41;//As matched & lossless
S_31=S_41^2/10^(D/10);
S_11=(VSWR-1)/(VSWR+1);
S_22=S_11;
S_44=S_11;
S_33=S_11;
S_21=sqrt(1-0.1-10^-4);
S_12=S_21;
S_34=sqrt(1-0.1-10^-4);
S_43=S_34;
S_24=sqrt(1-0.1-S_34^2);
S_42=S_24;
S_23=S_41;
S_32=S_23;
S_13=S_31;
S=[S_11,S_12,S_13,S_14;S_21,S_22,S_23,S_24;S_31,S_32,S_33,S_34;S_41,S_42,S_43,S_44];
disp(S,'Required Scattering Parameters are');