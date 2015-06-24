//chapter 13
//example 13.5
//page 414
clear all;
clc ;
//given
Av=144;//voltage gain
Vi=20;//ip voltage in mV
Ibmax=500;//maximum base current nA
//I1>>Ibmax
I1=(100*Ibmax)/1000;
printf("\ninput current(I2)=%d microA",I1);
R1=1000*Vi/I1;
printf("\nR1=%d ohm,use standard value 390 ohm",R1);R1=390;
R2=(Av*R1)/1000;
printf("\nR2=%.1f kohm,use standard value 56 kohm",R2);R2=56;
R3=R1;//R1||R2
printf("\nR3=%d ohm,standard value",(R3));



