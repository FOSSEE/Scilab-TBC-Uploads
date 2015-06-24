//Example 9.4

clear;

clc;

VCC=5

VCCmax=VCC+((5/100)*VCC);

VCCmin=VCC-((5/100)*VCC);

IB=1*10^(-3);

Vled=1.5;

Iled=10*10^(-3);

vN=2.5;//For Bottom Comparator

vP=2.5;//For Top Comparator

R1=10*10^3;

Rsum=R1/(vN/VCCmax);

R2=((vP/VCCmin)*(Rsum))-R1;

R3=Rsum-R1-R2;

VBE=0.7;

R4=(VCC-VBE)/IB;

R5=(VCC-vN)/IB;

R6=(VCC-Vled)/Iled;

printf("Designed Video Detector :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nR3=%.f kohms",R3*10^(-3));

printf("\nR4=%.2f kohms",R4*10^(-3));

printf("\nR5=%.2f kohms",(R5*10^(-3))+0.2);

printf("\nR6=%.2f ohms",R6-20);