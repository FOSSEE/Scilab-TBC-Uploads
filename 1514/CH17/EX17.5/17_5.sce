//chapter 17
//example 17.5
//page 535
clear all;
clc ;
//given
f1=20;//lower cutoff frequency Hz
R3=1.2;//kohm
Rl=100;//ohm
Vcc=30;
//Xc2<<R3 at f1
C2=1000/(2*%pi*f1*R3/10);
printf("\nc2=%.1f microF,use standard value 75 microF",C2);
XC4=Rl;
C4=10^6/(2*%pi*f1*Rl);
printf("\nc4=%.1f microF,use standard value 80 microF",C4);
Ip=100;
Vcemax=Vcc;
Icmax=1.1*Ip;
//dc ip power
Pidc=(Vcc*0.35*Ip)/1000;
Poac=0.5;
Pr=(Pidc-Poac)*0.5;
printf("\nTransistor specification are:\nPr=%.2f W,Vcemax=%d V,Icmax=%d mA",Pr,Vcemax,Icmax);
