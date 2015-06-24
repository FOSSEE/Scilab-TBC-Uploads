clear;
clc;
R1=1;C=0.05;R0=1;
R2=R0*R0/R1;
printf("-Series arm will have a resistance R2 = %f ohms\n",R2);
L=C*R0*R0;
printf(" -Value of inductance in parallel with R2 = %f henry",L);
