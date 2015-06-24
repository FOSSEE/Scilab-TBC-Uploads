//3.4
clc;
tq=50*10^-6;
Vin=40;
Vo=230;
IL=2;
IL_ref=2*Vo/Vin;
// C/L=(IL-ref/Vin)^2;          (i)
// Assume that circuit is reverse biased for one-fourth period of resonant circuit. thus
//%pi/3*(L*C)^0.5=50*10^-6;          (ii)
// on solving (i) and (ii)
C=13.73*10^-6;
L=C/(IL_ref/Vin)^2*10^6;
C=13.73*10^-6*10^6;
printf("C=%.3f uF",C)
printf("\nL=%.2f uH",L)