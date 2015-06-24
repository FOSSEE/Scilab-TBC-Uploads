//Example 6.9

clear;

clc;

f0=10*10^3;

Q=25;

HobpdB=0;

R1=10*10^3;//Assumption

R2=R1;//Assumption

R5=R1;//Assumption

R6=R1;//Assumption

R3=250*10^3;//Assumption

R4=R3;//Assumption

C1=1/(2*%pi*f0*R5);//Assumption

C2=C1;//Assumption

f0reler=0.01;//as relative error defined for f0=1%

Qreler=0.01

ftf0=f0/f0reler;

ftQ=(4*Q*f0)/Qreler;

printf("Designed Biquad Filter :")

printf("\nR1=R2=R5=R6=%.2f kohms",R1*10^(-3));

printf("\nR3=R4=%.2f kohms",R4*10^(-3));

printf("\nC1=C2=%.2f nF",C1*10^9);

if ftf0>ftQ then
    ft=ftf0;

else ft=ftQ
    
printf("\nGBP>=%.2f MHz",ft*10^(-6));