//Ex 3.24
clc;clear;close;
format('v',6);
Ap=12;//dB(Pass band gain)
G=round(10^(Ap/20));//gain(unitless)
Ri=100;//kohm(as high input impedence required)
R1=Ri;//kohm
//Low pass filter design
ALP=-1;AHP=-4;//(to satisfy R2<=100;//kohm)
R2=-ALP*R1;//kohm
f0=10*1000;//Hz(3-dB frequency)
C=1/(2*%pi*f0*R2*1000)*10^9;//nF
disp("Design values for low pass filter :");
disp(R2,"Resistance R1=R2 in kohm : ");
disp(C,"Capacitance C(nF): ");
//High pass filter design
R3=25;//kohm(Assumed)
R4=-AHP*R3;//kohm
f0=100;//Hz(3-dB frequency)
C=1/(2*%pi*f0*R3*1000)*10^9;//nF
disp("Design values for high pass filter :");
disp(R4,R3,"Resistance R3 & R4 in kohm : ");
disp(C,"Capacitance C(nF): ");
