//chapter 14
//example 14.2
//page 439
clear all;
clc ;
//given
Av=100;//voltage gain
vs=0.5;//input voltage
//datasheet of 709
Ibmax=200;//base current nA
I1=100*Ibmax;//nA
R1=10^5*(vs/I1);
printf("\nR1=%.1f kohm,use standard value 2.2 kohm",R1);R1=2.2;
R2=Av*R1;
R3=R1;//R1||R2=R1
printf("\nR2=%d kohm",R2);
printf("\nR3=%.1f kohm",R3);
Av=40;
printf("\nVoltage gain =%d db",Av)
printf("\nFrom datasheet of 741,\nFor Av=40 db,\nc1=100 pF\nc2=3 pF\nR1=1.5 kohm")

