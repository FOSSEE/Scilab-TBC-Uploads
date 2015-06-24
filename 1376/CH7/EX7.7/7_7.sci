//7.7
clc;
S=0.875;
P=1.35*10^3;
Q=1*10^3;
Cs=0.1*10^-6;
rx=S*P/Q;
printf("Resistance=%.2f ohm",rx)
Lx=P*Cs*S*10^3;
printf("\nInductance=%.3f mH",Lx)