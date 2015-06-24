// Exa 6.6
clc;
clear;
close;
// given data 
AF=5;//unitless
fc=1;//in KHz
disp("To have a roll off rate of 40dB/decade a second order filter is requied.");
disp("For flattest passband, butterworth type filter has to be used, hence alfa=1.414");
alfa=1.414;//unitless
// assume C2=0.1 uF
C2=0.1;//in uF
C3=(C2*alfa^2)/4;// in uF
R=1/(2*%pi*fc*10^3*sqrt(C2*10^-6*C3*10^-6));//in ohm
//Take RF=10 Kohm
RF=10;//in  Kohm
R1=RF/(AF-1);//in Kohm
disp(R/1000,"Value of R in Kohm is :")
disp(RF,"Value of RF in Kohm is :")
disp(R1,"Value of R1 in Kohm is :")