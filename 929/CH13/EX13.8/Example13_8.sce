//Example 13.8

clear;

clc;

fOmin=1*10^6;

fI=1*10^3;

fOmax=2*10^6;

Nmin=fOmin/fI;

Nmax=fOmax/fI;

f0=(fOmin+fOmax)/2;

fR=f0/2;

vEmax=3.9;

vEmin=1.1;

Ko=(2*%pi*2*fR)/(vEmax-vEmin);

R1=28*10^3;

R2=287*10^3;

C=110*10^(-12);

VDD=5;

Kd=5/(4*%pi);

Kv=10^4;

Nmean=sqrt(Nmin*Nmax);

Kvmean=(Kd*Ko)/Nmean;

zeta=0.707;

fI=1*10^3;

wI=2*%pi*fI;

wn=wI/20;

wp=(wn^2)/Kv;

wz=wn/(2*zeta);

printf("R1=%.1f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nC=%.f pF",C*10^12);

printf("\nfI=%.d kHz",fI*10^(-3));

R3=6.17*10^3;

R4=3.45*10^3;

C1=1*10^(-6);

//Filter Components are taken from figure 13.33, as no procedure is mentioned for designing the filter

printf("\nFilter Components :");

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nC1=%.f uF",C1*10^6);

printf("\nR4=%.2f kohms",R4*10^(-3));