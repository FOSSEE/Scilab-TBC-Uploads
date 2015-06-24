//7.3
clc;
C3=106*10^-12;
C1=0.35*10^-6;
R1=318;
R2=130;
C2=C3*R1/R2;
Rx=R2*C1/C3;
printf("Series Resistance=%.2f ohm",Rx)
wr=314;
pf=wr*Rx*C2;
printf("\nPower factor=%.2f",pf)