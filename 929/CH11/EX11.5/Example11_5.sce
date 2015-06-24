//Example 11.5

clear;

clc;

n=4;

VBE2=650*10^(-3);

TCVBG=0;//at 25 deg Celsius

Vref=5;

VG0=1.205;

VT=0.0257;

K=((VG0-VBE2)/VT)+3;

R4R3rat=K/(2*log(n));

VBG=VG0+(3*VT);

R2R1rat=(Vref/VBG)-1;

printf("(R4/R3)=%.2f",R4R3rat);

printf("\n(R2/R1)=%.1f",R2R1rat);