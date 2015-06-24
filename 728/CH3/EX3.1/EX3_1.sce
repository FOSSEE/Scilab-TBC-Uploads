//Caption:Program to find value of terminating impedance of lossless transmission line.
//Exa:3.1
clc;
clear;
close;
//Given:
Z_ch=100;//in ohms
S=5;//VSWR (unitless)
Z=Z_ch*S;
printf("\n\n\t The terminating impedence = %d ohms ",Z);