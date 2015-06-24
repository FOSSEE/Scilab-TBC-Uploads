//Ex 3.23
clc;clear;close;
format('v',6);
f0=100;//Hz(3-dB frequency)
Ri_inf=100;//kohm(High frequency input resistance)
Tinf=1;//high frequency gain
R1=Ri_inf;//kohm
R2=Tinf*R1;//kohm
C=1/(2*%pi*f0*R2*1000)*10^9;//nF
disp("Design values are :");
disp(R2,"Resistance R1=R2 in kohm : ");
disp(C,"Capacitance C(nF): ");
