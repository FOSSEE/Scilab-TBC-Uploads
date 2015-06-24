//12.1
clc;
K=4;
strain=1*10^-6;
R=150;
dR=K*strain*R*10^6;
printf("Change in resistance=%.1f micro-ohm",dR)
