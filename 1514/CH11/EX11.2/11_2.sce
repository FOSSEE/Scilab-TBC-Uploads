//chapter 11
//example 11.2
//page 315
clear all;
clc ;
//given
f1=100;//lower cutoff frequency Hz
f2=50;//upper cutoff frequency kHz
hfe=100;
hie=1;
R1=100;R2=33;Rc=12;Rl=120;//kohm
XC2=round(1000*hie/(1+hfe));
C2=10^6/(2*%pi*f1*XC2);

Zi=1/(1/R1+1/R2+1/hie);
C1=10^3/(2*%pi*f1*Zi/10);
printf("\nC1=%.1f microF,use standard value 18 microF",C1);
printf("\nC2=%d microF,use standard value 180 microF",C2);
XC3=Rl/10;
C3=10^3/(2*%pi*f1*Rl/10);
printf("\nC3=%.2f microF,use standard value 0.15 microF",C3);
XC4=(Rc*Rl)/(Rc+Rl);
C4=10^6/(2*%pi*f2*XC4);
printf("\nC4=%d pF,use standard value 300 pF",ceil(C4));




