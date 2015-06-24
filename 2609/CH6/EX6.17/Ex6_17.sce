//Ex 6.17
clc;
clear;
close;
format('v',4);
//Data given
Ls=3;//H
Cs=0.05;//pF
Rs=2;//kohm
Cm=10;//pF
fS=1/2/%pi/sqrt(Ls*Cs*10^-12)/1000;//kHz
disp(fS,"Series resonant frequency(kHz)");
CT=Cm*Cs/(Cm+Cs);//pF////Equivalent capacitance
fP=1/2/%pi/sqrt(Ls*CT*10^-12)/1000;//kHz
disp(fP,"Parallel resonant frequency(kHz)");
