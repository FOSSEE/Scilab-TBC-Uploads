//16.11
clc;
VL=1100;
IL=100;
pf=150*1000/(3^0.5*VL*IL);
E_per_phase=VL/3^0.5;
Zph=E_per_phase/100;
Rph=pf*Zph;
Xc=(Zph^2-Rph^2)^0.5;
C=10^6/(2*%pi*50*Xc);
disp('Circuit Constants are')
printf("\nR=%.2f ohm",Rph)
printf("\nC=%.2f uF",C)