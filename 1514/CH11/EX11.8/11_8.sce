//chapter 11
//example 11.8
//page 329
clear all;
clc ;
//given
Rl=40;
f1=75;//lower cutoff frequency Hz
hfe=50;
hie=0.5;
R1=68;R2=47;//kohm
Zi=round(1000/(1/R1+1/R2+1/hie));
XC1=Zi/10;
C1=10^6/(2*%pi*f1*XC1);
printf("\nC1=%.1f microF,use standard value 47 microF",C1);
XC3=1000*0.65*hie/(1+hfe);
XC2=XC3;XC2=6.4;
C2=10^6/(2*%pi*f1*XC2)-1;
C3=C2;
printf("\nC2=C3=%d microF, standard value ",floor(C2));
XC4=Rl/10;
C4=10^3/(2*%pi*f1*XC4);
printf("\nC4=%.2f microF,use standard value 0.56 microF",(C4));
