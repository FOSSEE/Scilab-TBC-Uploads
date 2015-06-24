//chapter 14
//example 14.1
//page 437
clear all;
clc ;
//given
Av=10;//voltage gain
vs=0.5;//input voltage
//datasheet of 741
Ibmax=1.5;//base current microA
I1=100*Ibmax;//microA
R1=vs/I1*1000;
printf("\nR1=%.1f kohm",R1);
R2=Av*R1;
R3=R1;//R1||R2=R1
printf("\nR2=%d kohm",R2);
printf("\nR3=%.1f kohm",R3);
printf("\nFrom datasheet of 741,\nFor Av=10,\nc1=100 pF\nc2=500 pF\nc3=1000 pF")
