//Example 5.5

clear;

clc;

R1=100;

R2=100*10^3;

delvs=0.1;

dcgain=1+(R2/R1);

PSRRremin=30*10^(-6);//Minnimum rating of the reciprocal of PSRR

PSRRremax=150*10^(-6);

delVosmin=delvs*PSRRremin;

delVosmax=delvs*PSRRremax;

delvomin=delVosmin*dcgain;

delvomax=delVosmax*dcgain;

printf("The output ripple is=%.2f mV(typical)",delvomin*10^3);

printf(" and %.2f mV(maximum) peak to peak",delvomax*10^3);