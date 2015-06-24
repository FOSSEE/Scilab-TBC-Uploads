//Example 2.2

clear;

clc;

sen=0.1*10^9;//sensitivity in V/A

R=1*10^6;//Assumption

//sen=k*R ->k=sen/R

k=sen/R;

R1=1*10^3;//Assumption

//k=1+(R2/R1)+(R2/R) ->R2=(k-1)/((1/R1)+(1/R))

R2num=k-1;

R2den=((1/R1)+(1/R));

R2=R2num/R2den;

printf("Designed High Sensitivity I-V Converter :");

printf("\nR=%.f Mohms",(R*10^(-6)));

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3))