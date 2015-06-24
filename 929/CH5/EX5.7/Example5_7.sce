//Example 5.7

clear;

clc;

As=-10;

Rpot=10*10^3;

Vpot=15;

EImax=15*10^(-3);

Vosmax=6*10^(-3);

Iosmax=200*10^(-9);

Rpmax=(EImax-Vosmax)/Iosmax;//Parallel Combination of R1 and R2

R1max=(abs(As)+1)*(Rpmax/abs(As));

R1=R1max-(2.5*10^3);//Standardising R1

R2=abs(As)*R1;

Rp=(R1*R2)/(R1+R2);

printf("R1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nRp=%.f kohms",Rp*10^(-3));