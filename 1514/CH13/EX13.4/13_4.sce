//chapter 13
//example 13.4
//page 410
clear all;
clc ;
//given
Vi=50;//ip voltage in mV
Vo=2;//op voltage volts
Ibmax=500;//maximum base current nA
I2=(100*Ibmax)/1000;
printf("\noutput current(I2)=%d microA",I2);
R3=Vi/I2;
printf("\nR3=%d kohm,standard value",R3);
R23=1000*Vo/I2;
R2=R23-R3;
R1=(R2*R3)/(R2+R3)
printf("\nR2=%d kohm,standard value\nR1=%d kohm,standard value",R2,ceil(R1));



