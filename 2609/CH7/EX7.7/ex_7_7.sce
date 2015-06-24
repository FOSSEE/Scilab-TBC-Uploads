////Ex 7.7
clc;
clear;
close;
format('v',9);
fo=800;//Hz
D=60;//%(duty cycle)
T=1/fo*1000;//ms
VCC=10;//V
tC=D*T/100;//ms
tD=T-tC;//ms
C=0.047;//micro F(choosen between 0.01<=C<=1)
RB=tD*10^-3/(0.69*C*10^-6)/1000;//kohm
RA=tC*10^-3*1.45/(C*10^-6)/1000-RB;//kohm
disp("Design values are : ");
disp(C,"Capacitance C(micro F)");
disp(round(RA),"Resistance RA(kohm)");
disp(round(RB),"Resistance RB(kohm)");
