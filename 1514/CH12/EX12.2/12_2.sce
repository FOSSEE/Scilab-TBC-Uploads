//chapter 12
//example 12.2
//page 364
clear all;
clc ;
//given values in ohm
Zi2=967;
hfe1=100;
R3=12000;
hie1=1000;
R9=150;
hfe2=100;
hie2=1000;
R7=R3;
RL=120*10^3;
R10=R7;
R1=RL;
R2=39*10^3;
//voltage gain of stage 1
A1=-hfe1*(R3*Zi2/(R3+Zi2))/(hie1+R9*(1+hfe1));
printf("\nvoltage gain of stage 1=%.1f",A1);
//voltage gain of stage 2
Rp=(1/R7)+(1/RL)+(1/R10);
A2=-hfe2*(1/Rp)/hie2;
printf("\nvoltage gain of stage 2=%d",A2);
//open loop gain 
A1=-5.5;A2=-571;
M = (A1)*(A2) ;
printf("\nopen loop gain =%d",M);
//feedback factor
B=R9 /(R9 + R10);
b=B^-1;
printf("\nfeedback factor(beta)=1/%d",b)
Av1=1/B;//for M*beta >>1
Av2=M/(1+M*B);//closed loop gain
printf("\nclosed loop gain=%d or %d if M*beta >>1",ceil(Av2),Av1);
Zb=hie1;
Zin=(1+M*B)*Zb;
//input impedance
Zi=1/((1/Zin)+(1/R1)+(1/R2))*10^-3;
printf("\ninput impedance=%d kohm",ceil(Zi));
//output impedance 
Zout=(R7*R10/(R7+R10))/(1+M*B);
printf("\noutput impedance =%d ohm",ceil(Zout));
XC1=Zi/10;
f1=100;//Hz
C1=10^3/(2*%pi *f1*XC1);
printf("\ncapacitor C1=%.2f microF,use standard value 1 microF",C1)

