//chapter 11
//example 11.10
//page 334
clear all;
clc ;
//given
f1=150;//lower cutoff frequency Hz
hfe=50;
hie=0.5;
R1=68;R2=27;//kohm
Zi=round(1000/(1/R1+1/R2+1/hie));
XC1=Zi/10;
C1=10^6/(2*%pi*f1*XC1);
printf("\nC1=%.1f microF,use standard value 22 microF",C1);

XC2=1000*0.65*hie/(1+hfe);
XC2=6.4;
C2=10^6/(2*%pi*f1*XC2);
printf("\nC2=%d microF, standard value 180 microF",ceil(C2));
Rl=100;
XC3=0.65*Rl;
C3=10^6/(2*%pi*f1*XC3);
printf("\nC3=%.1f microF, standard value 18 microF",(C3));
