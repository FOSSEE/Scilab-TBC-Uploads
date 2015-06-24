//exa 1.18
clc;clear;close;
format('v',8);
Lmax=100;//MW
LF=40;//%//Load Factor
Lavg=Lmax*LF/100;//MW
E=Lavg*24*365;//MWh
disp(E,"Energy generated in a year(MWh)");
