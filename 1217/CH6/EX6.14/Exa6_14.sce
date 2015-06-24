// Exa 6.14
clc;
clear;
close;
// given data 
fL=2;//in KHz
fH=2.5;//in KHz
AF=-5;//unitless
fc=sqrt(fH*1000*fL*1000);//in Hz
BW=fH*1000-fL*1000;//in Hz
Q=fc/BW;//unitless
disp(fc,"Center frequency in Hz is : ");
disp(BW,"BW in Hz is :");
disp(Q,"Selectivity is :");
disp("HenceQ is within limit 1<Q<10 for a single op-amp band pass filter.");
//assume C=0.01 uF
C=0.01;//in uF
R2=2/(2*%pi*C*10^-6*BW);//in Kohm
R1=-R2/(2*AF);//in KOhm
R3=R1/((4*%pi*%pi*R1*R2*fc*1000*fc*1000*C*C*10^-12)-1);//in Kohm
disp(R1/1000,"Value of R1 in Kohm is :")
disp(R2/1000,"Value of R2 in Kohm is :")
disp(R3*1000,"Value of R3 in ohm is :")
disp(C,"Value of C in uF is :")