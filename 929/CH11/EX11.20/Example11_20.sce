//Example 11.20

clear;

clc;

VI=15;

Vo=5;

Io=3;

fs=50*10^3;

IQ=10*10^(-3);

Vsat=1;

tsw=100*10^(-9);

VF=0.7;

tRR=100*10^(-9);

Rcoil=50*10^(-3);

deliL=0.6;

ESR=100*10^(-3);

Pcore=0.25;

D=(Vo+VF)/(VI-Vsat+VF);

Dper=D*100;

Psw=(Vsat*D*Io)+(2*fs*VI*Io*tsw);

PD=(VF*(1-D)*Io)+(fs*VI*Io*tRR);

Pcap=ESR*((deliL/sqrt(12))^2);

Pcoil=(Rcoil*((deliL/sqrt(12))^2))+Pcore;

Pcontr=VI*IQ;

Po=Vo*Io;

Pdiss=Psw+PD+Pcap+Pcoil+Pcontr;

effper=(Po/(Po+Pdiss))*100;

efflin=(Vo/VI)*100;

printf("Efficiency of Buck Regulator=%.f percent",effper);

printf("\nEfficiency of Linear Regulator=%.f percent",efflin);

printf("\nHence the Buck Regulator is most efficient than a Linear Regulator.");