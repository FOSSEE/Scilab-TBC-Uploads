//Example 8.2

clear;

clc;

R=159*10^3;

C=10*10^(-9);

f0=1/(2*%pi*R*C);

ft=10^6;

fx=sqrt(f0*ft);

Q=sqrt(ft/f0);

d=-90-((180/%pi)*atan(fx/f0));

pm=180+d;

printf("fx=%.2f kHz",fx*10^(-3));

printf("\nQ=%.f",Q);

printf("\nPhase Margin (PM)=%.1f degrees",pm);