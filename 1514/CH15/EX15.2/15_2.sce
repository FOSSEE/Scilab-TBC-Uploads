//chapter 15
//example 15.2
//page 455
clear all;
clc ;
//given for colpitts oscillator
f=40000;//frequency in kHz
vcc=10;//supply voltage(dual supply)
L=0.1;//inductor in mH
Cr=(1/(4*(%pi)^2*f^2*L))/10^-12;

printf("\nCr=%.1f pF",Cr);
C1=Cr*10;C1=1500;
printf("\nC1=%d pF",C1);
C2=1/(1/Cr-1/C1);
printf("\nC2=%d pF,use standard value 180 pF",ceil(C2));C2=180;

XC2=10^9/(2*%pi*f*C2);
XC1=10^9/(2*%pi*f*C1);
printf("\nXC1=%.2f kohm\nXC2=%d kohm",XC1,XC2);
//R1>>XC1
R1=10*XC1;
printf("\nR1=%.1f kohm,use standard value 27 kohm",R1);R1=27;
R2=(C1/C2)*R1;//R2>(C1/C2)*R1
printf("\nR2=%d kohm,use standard value 270 kohm",R2);R2=270;
R3=R1;
printf("\nR3=%d kohm,standard value",R3);
