//Ex:12.4
clc;
clear;
close;
prf=50;
C=100*10^-9;
R=0.72/(prf*C);//in ohms
printf("R= %d kohm",R/1000);