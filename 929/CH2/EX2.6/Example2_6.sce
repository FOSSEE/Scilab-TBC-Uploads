//Example 2.6

clear;

clc;

//From result of Example 2.4 
R1=15*10^3;

R2=4.5*10^3;

R3=R1;

R4=R2;

p=0.01;

e=4*p*R1;//Resistance to be trimmed

R3redmax=R3-e;//R3red<=R3redmax

R3red=R3redmax-400;//Tolerance 1%

Rpot=2*(R3-R3red);

printf("Designed Current Source using Grounded Load Converter with trimmed R3 :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nRs=%.2f kohms",R3red*10^(-3));

printf("\nRpot=%.2f kohms",Rpot*10^(-3));

printf("\nR4=%.2f kohms",R4*10^(-3));