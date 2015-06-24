//1.22
clc;
Ip=16;
V=90;
// C/L=(Ip/V)^2;          (i)
// Assume that circuit is reverse biased for one-fourth period of resonant circuit. thus
//%pi/2*(L*C)^0.5=40*10^-6;          (ii)
// on solving (i) and (ii)
C=4.527*10^-6;
L=C/(Ip/V)^2*10^6;
C=4.527*10^-6*10^6;
printf("C=%.3f uF",C)
printf("\nL=%.2f uH",L)