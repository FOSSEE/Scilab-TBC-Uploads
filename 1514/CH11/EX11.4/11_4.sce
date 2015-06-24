//chapter 11
//example 11.4
//page 321
clear all;
clc ;
//given
f1=100;//lower cutoff frequency Hz
gm=6000;//transconductance for 2N5459(microS)
Rl=120;//load resistance in kohm
R2=1;//Mohm
XC2=10^3/gm;
C2=10^3/(2*%pi*f1*XC2);

R1=4.7;
Zi=1000/(1/R1+1/R2);
XC1=Zi/10;
C1=10^3/(2*%pi*f1*XC1);
printf("\nC1=%.3f microF,use standard value 0.02 microF",C1);
printf("\nC2=%.1f microF,use standard value 10 microF",C2);
XC3=Rl/10;
C3=10^3/(2*%pi*f1*Rl/10);
printf("\nC3=%.2f microF,use standard value 0.15 microF",C3);


