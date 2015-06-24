//Example 13.7

clear;

clc;

f0=1*10^6;

fR=((0.5)/2)*10^6;

vEmax=3.9;

vEmin=1.1;

Ko=(2*%pi*2*fR)/(vEmax-vEmin);

R1=95.3*10^3;//obtained from PLL's data sheet

R2=130*10^3;//obtained from PLL's data sheet

C=100*10^(-12);//obtained from PLL's data sheet

VDD=5;

Kd=VDD/%pi;

Kv=Kd*Ko;

zeta=0.707;

fm=1*10^3;

fmin3dB=fm*10;

w3dB=2*%pi*fmin3dB;

wn=w3dB/2;

wp=(wn^2)/Kv;

wz=wn/(2*zeta);

printf("R1=%.1f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nC=%.f pF",C*10^12);

//Filter Components are taken from figure 13.33, as no procedure is mentioned for designing the filter

R3=80.6*10^3;

R4=2*10^3;

C1=22*10^(-9);

C2=10*10^(-9);

printf("\nFilter Components :");

printf("\nR3=%.1f kohms",R3*10^(-3));

printf("\nC1=%.f nF",C1*10^9);

printf("\nR4=%.f kohms",R4*10^(-3));

printf("\nC2=%.f nF",C2*10^9);