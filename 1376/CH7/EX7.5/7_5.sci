//7.5
clc;
S=900;
P=1.5*10^3;
Q=2*10^3;
Cs=0.2*10^-6;
rx=S*P/Q;
printf("Resistance=%.0f ohm",rx)
Lx=P*Cs*S;
printf("\nInductance=%.2f H",Lx)