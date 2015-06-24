//Ex 3.22
clc;clear;close;
format('v',6);
f0=10*1000;//Hz(3-dB frequency)
DCgain=10;
R1=10;//kohm
R2=DCgain*R1;//kohm
C=1/(2*%pi*f0*R2*1000)*10^9;//nF
disp("Design values are :");
disp(R2,"Resistance R2(kohm): ");
disp(C,"Capacitance C(nF): ");
