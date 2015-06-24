////Ex 7.5
clc;
clear;
close;
format('v',9);
fo=2;//kHz
D=40;//%(duty cycle)
T=1/fo;//ms
VCC=10;//V
tC=D*T/100;//ms
tD=T-tC;//ms
C=0.22;//micro F(choosen between 0.01<=C<=1)
RB=tD*10^-3/(0.69*C*10^-6)/1000;//kohm
RA=T*10^-3*1.45/(C*10^-6)/1000-RB;//kohm
disp("Design values are : ");
disp(C,"Capacitance C(micro F)");
disp(RA,"Resistance RA(kohm)");
disp(round(RB),"Resistance RB(kohm)");
