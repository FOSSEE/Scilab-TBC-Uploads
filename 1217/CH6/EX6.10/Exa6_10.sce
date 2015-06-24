// Exa 6.10
clc;
clear;
close;
// given data 
fc=2;//in KHz
disp("As the type of the filter is not given, here we design a sallen key equal component filter with Butterworth response.");
alfa=1.414;//unitless
Klp=1;//unitless
//assume C=0.01 uF
C=0.01;//in uF
R=Klp/(2*%pi*fc*1000*C*10^-6);//in ohm
AF=3-alfa;//unitless
R1=2*R/0.369;//in ohm
RF=0.586*R1;//in ohm
disp("Design components values are :");
disp(R1/1000,"Value of R1 in Kohm is :")
disp(RF/1000,"Value of RF in Kohm is :")
disp(R/1000,"Value of R2=R3=R in Kohm is :")
disp(C,"Value of C2=C3=C in uF is :")