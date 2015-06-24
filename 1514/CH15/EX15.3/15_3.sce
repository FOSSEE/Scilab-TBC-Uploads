//chapter 15
//example 15.3
//page 462
clear all;
clc ;
//given
vcc=10;//supply voltage(dual supply)
fo=10;//op frequency
Ibmax=500;//base current nA
I4=500;//current through R4 in microA
vo=vcc-1;//op voltage
R34=1000*vo/I4;//R3+R4
//R3=2xR4,R34=3*R4=18;
R4=R34/3;
printf("\nR4=%d kohm,use standard value 5.6 kohm",R4);R4=5.6;
R3=2*R4;
printf("\nR3=%.1f kohm,use standard value 12 kohm",R3);R3=12;
R2=R4;printf("\nR2=%.1f kohm",R2);
R1=R2;printf("\nR1=%.1f kohm",R1);
C=10^6/(2*%pi*R1*fo);
printf("\nC=%d pF, standard value 2700 pF",C)


