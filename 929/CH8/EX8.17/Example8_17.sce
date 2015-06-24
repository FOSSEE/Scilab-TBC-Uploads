//Example 8.17

clear;

clc;

dcgain=-100;

R1=1*10^3;

R2=abs(dcgain)*R1;

ft1=1*10^6;

ft2=ft1;

R4R3rat=sqrt((ft2/ft1)*(1+(R2/R1)))-1;

R3=2*10^3;

R4=R3*R4R3rat;

a0=2*10^5;

T0=a0*(1+(R4/R3))/(1+(R2/R1));

fB=ft1/10;

PM=90;

T0s=a0/(1+(R2/R1));

fBs=ft1/100;

printf("Components for the Circuit :");

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.f kohms",R3*10^(-3));

printf("\nR4=%.f kohms",R4*10^(-3));

printf("\nAssociated Parameters with the Circuit :");

printf("\nT0=");

disp(T0);

printf("fB=%.f kHz",fB*10^(-3));

printf("\n\nSingle Op Amp Parameters :");

printf("\nT0=");

disp(T0s);

printf("fB=%.f kHz",fBs*10^(-3));