//chapter 11
//example 11.14
//page 344
clear all;
clc ;
//given
R1=2700;R2=560;
f1=150;//lower cutoff frequency Hz
Zi=round(1000*(R1*R2)/(R1+R2));
XC1=Zi/10;
C1=10^6/(2*%pi*f1*XC1);
printf("\nC1=%.2f microF which is standard value",C1);

gm=6000;
XC2=0.65/gm;
C2=1/(2*%pi*f1*XC2);
printf("\nC2=%.1f microF,standard value 10 microF",(C2));

hie=1;hfe=100;
XC3=1000*(0.65*hie)/(1+hfe);
XC3=6.5;
C3=10^6/(2*%pi*f1*XC3);
printf("\nC3=%d microF,standard value 180 microF",(C3));
Rl=180;
XC4=Rl/10;
C4=10^3/(2*%pi*f1*XC4);
printf("\nC4=%.3f microF,standard value 0.06 microF",(C4));


