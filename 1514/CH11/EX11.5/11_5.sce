//chapter 11
//example 11.5
//page 323
clear all;
clc ;
//given
Rl=120;//load resistance in kohm
Vcc=24;//supply voltage V
f1=100;//lower cutoff frequency Hz
hfe=100;
hie=1;
printf("\nR1=R5=120 kohm\nR2=R6=39 kohm\nR3=R7=12 kohm\nR4=R8=3.9 kohm\nC1=C3=18 microF");
XC4=1000*(0.65*hie)/(1+hfe);XC4=6.4;
C4=10^6/(2*%pi*f1*XC4);
printf("\nC2=C4=%d microF,use standard value 250 microF",round(C4));
printf('\nC5=0.15 microF')
