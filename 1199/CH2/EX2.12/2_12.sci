// 2.12
clc;
Rm=10000;
Rp=Rm/15;
R=600;
P=5;
ei= (P*R)^0.5;
printf("Maximum excitation voltage = %.1f V",ei)
S=ei/360;
printf("\nSensitivity  = %.3f V/degree",S)