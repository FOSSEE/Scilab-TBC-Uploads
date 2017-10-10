//Example 3// Ch 12
clc;
clear;
close;
// given data
l=10*10^3;//core cable length in m
Res=0.5;//insulation resistance in Mohms
R=1.5;//core diameter in cm
R1=3;//sheath diameter in cm
resistivity=Res*2*%pi*l/log(R1/R);
printf("resistivity of the material %e Mohms.m",resistivity )

