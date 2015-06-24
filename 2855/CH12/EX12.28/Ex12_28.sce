//Chapter 12
//page no 495
//given
clc;
clear all;
Ipd=1.2;            //in mA
m=0.04;        
RINd=-160;               //in dB/Hz
e=1.6*10^-19;          
nth=8;          //in pA/Hz
BW=4;           //in MHz
Rin=10^(RINd/10);           //in 

CNR=[0.5*(m*Ipd*10^-3)^2]/[(2*e*Ipd*10^-3)+(Rin*Ipd*10^-3)^2+((nth*10^-12)^2)*BW/10^6];
printf("Value of CNR=%e",CNR)
CNRdB=10*log10(CNR)
printf("\nValue of CNR in dB=%.2f dB",CNRdB)
//Answer in the book is misprinted or wrong calculation performed in the book
