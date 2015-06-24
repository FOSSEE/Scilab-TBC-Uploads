clc;
clear;
printf("\t\t\tChapter12_example7\n\n\n");
// Determination of the heat lost by the oven through its top surface. 
// all energy leaving A1 is intercepted by A2 and vice versa
F12=1;
F21=1;
F11=0; // the surfaces are flat
F22=0;
emissivity1=0.94; // for oxidized steel from appendix table E1
emissivity2=0.94
T1=533;
T2=323;
sigma=5.67e-8; // Stefan-Boltzmann constant
q1=(sigma*(T1^4-T2^4))/((1/emissivity1)+(1/emissivity2)-1);
printf("\nThe heat lost through bottom surface is %d W/sq.m",q1);
q2=-q1;
printf("\nThe heat lost through top surface is %d W/sq.m",q2);
