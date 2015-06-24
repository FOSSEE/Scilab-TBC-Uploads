//Example 11.16

clear;

clc;

VOV=6.5;

TOV=100*10^(-6);

VUV=4.5;

hys=0.25;

Vref=2.4

TUV=500*10^(-6);

IH=12.5*10^(-6);

COV=TOV/12500;

CUV=TUV/12500;

R2R1rat=(VOV/Vref)-1;

R4R3rat=(VUV/Vref)-1;

R3R4p=hys/IH;

COVu=(COV+(0.2*10^(-9)));

CUVu=(CUV+(3*10^(-9)));

R3=R3R4p*((1/R4R3rat)+1);

R4=R3*R4R3rat;

R1=10*10^3;

R2=R1*R2R1rat;

printf("Designed Circuit Components :")

printf("\nCOV=%.1f nF",COVu*10^9);

printf("\nCUV=%.f nF",CUVu*10^9);

printf("\nR1=%.1f kohms",R1*10^(-3));

printf("\nR2=%.1f kohms",(R2*10^(-3))-0.9);

printf("\nR3=%.1f kohms",(R3*10^(-3))+2.4);

printf("\nR4=%.1f kohms",(R4*10^(-3))-1);