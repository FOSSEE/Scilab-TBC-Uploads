//Example 8.11

clear;

clc;

a0=10^5;

f1=10*10^3;

f2=3*10^6;

f3=30*10^6;

R1=10*10^3;

R2=100*10^3;

PM=45;

ajf=a0/((1+(%i*(f2/f1)))*(1+(%i*(f2/f2)))*(1+(%i*(f2/f3)))); 

ajf2mag=abs(ajf);

Rc1=R2/(ajf2mag-(1+(R2/R1)));

printf("(a) Rc=%.1f ohms",Rc1);

Rc2=430;

brec=1+(R2/R1)+(R2/Rc2);

a0b=a0/brec;

dcge=-100/(a0b);

printf("\n\n(b) DC Gain Error=%.2f percent",dcge);

EI=1*10^(-3);

EO=brec*EI;

printf("\n\n(c) DC Output Error=%.f mV",EO*10^3);

fmin3dB=f2;

printf("\n\n(d) f-3dB=%.f MHz",fmin3dB*10^(-6));