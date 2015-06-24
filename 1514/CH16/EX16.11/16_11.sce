//chapter 16
//example 16.11
//page 507
clear all;
clc ;
//given
Vo=6;//op voltage
Vs=15;//supply voltage
Iadj=100;//microA
I1=2.5;
Vref=2.5;
R1=Vref/I1;
printf("\nR1=%d kohm",R1);
R2=(Vo-Vref)/I1;
printf("\nR2=%.1f kohm,use 1.2 kohm + 200 ohm in series",R2);
