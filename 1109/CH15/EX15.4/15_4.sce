clear;
clc;
R0=600;R1=400;L=40*(10^-3);
R2=R0*R0/R1;
printf("-Other arm of lattice equalizer will have a resistance of R2 = %f ohms\n",R2);
C=L/(R0*R0);
printf(" -R2 resistance will be in parallel with a capacitance of C = %f microfarads",round(C*(10^8))/100);
