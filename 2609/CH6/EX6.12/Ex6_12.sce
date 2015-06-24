//Ex 6.12
clc;
clear;
close;
format('v',6);
R1=4.7;//kohm
R2=3.3;//kohm
Rf=2;//kohm
C=0.1;//micro F
f0=1/2/(Rf*1000)/(C*10^-6)/log(1+2*R2/R1)/1000;//kHz
disp(f0,"Frequency of output signal(kHz)");
