//Caption:Find the pitch factor
///Exa:7.2
clc;
clear;
close;
P=4;//no. of poles
S=48;//no. of slots
S_p=S/P;//slots per pole
S_span=180/S_p;//slot span
n=S/(3*P);//no. of coils in phase group
C_span=9*S_span;//coil span
K_p=sind(C_span/2);
disp(K_p,'pitch factor =');