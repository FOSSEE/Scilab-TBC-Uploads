// Exa 6.8
clc;
clear;
close;
// given data 
Klp=1;//unitless// it is 1 for butterworth filter
alfa=1.414;//unitless// it is 1.414 for butterworth filter
fc=1;//in KHz
R=15.9;//in Kohm
// assume C=0.01 uF
C=0.01;//in uF
R=Klp/(2*%pi*fc*1000*C*10^-6);// in ohm
AF=3-alfa;//unitless
R1=2*R/0.369;//in Kohm
RF=(AF-1)*R1;//in Kohm
A2=5/AF;//unitless
disp(RF/1000,"Value of RF in Kohm is :");
disp("Now to obtain an overall gain of 5, add an amplifier A2 after the filter.");
disp(A2,"Gain of this amplifier is :");