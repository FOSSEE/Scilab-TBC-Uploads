// 2.49
clc;
A=25*10^-6;
F=5;
P=F/A;
d=150*10^-12;
e=12.5*10^-9;
g=d/(e);
t=1.25*10^-3;
Eo=(g*t*P);
strain=P/(12*10^6);
Q=d*F*10^12;
C=Q/Eo;
printf("\n strain=%.4f ",strain)
printf("\n Charge=%.0f pC",Q)
printf("\n capacitance=%.0f pF",C)
