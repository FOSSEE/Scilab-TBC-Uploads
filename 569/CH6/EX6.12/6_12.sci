// Calculating Signal to noise ratio and CMRR
clc;
V2=30*10^-3;
V1=-30*10^-3;
Vd=V2-V1;
Ad=150;
Vos=Ad*Vd;
Ac=0.04;
Vc=600*10^-3;
Von=Ac*Vc;
SNR=Vos/Von;
CMRR=Ad/Ac;
disp(SNR,'Signal to Noise Ratio=')

disp(CMRR,'CMRR=')