//Example 9.5

clear;

clc;

VCC=5;

Vol=0;

Vtl=1.5;

Vth=2.5;

R4=2.2*10^3;//Assumed

R3=100*10^3;//Assumed (Much Greater than R4)

A=[(Vtl/(VCC-Vtl)) -1;1 -((VCC-Vth)/Vth)];

B=[((Vtl/(VCC-Vtl))*(1/R3));-((1/R3)*((VCC-Vth)/Vth))];

Rrec=linsolve(A,B);

R1rec=Rrec(1,1);

R2rec=Rrec(2,1);

R1=1/R1rec;

R2=1/R2rec;

printf("Designing Single Supply Inverting Schmitt trigger :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.1f kohms",R2*10^(-3));

printf("\nR3=%.f kohms",R3*10^(-3));

printf("\nR4=%.1f kohms",R4*10^(-3));