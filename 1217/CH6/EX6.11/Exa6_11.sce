// Exa 6.11
clc;
clear;
close;
// given data 
C=0.1;//in uF
R=11;//in Kohm
RF=5.6;//in Kohm
R1=10;//in Kohm
AF=1+RF/R1;//unitless
alfa=3-AF;//unitless
Klp=1;//unitless// for Butterworth filter
Khp=1/Klp;//unitless
f3dB=Khp/(2*%pi*R*1000*C*10^-6);//in Hz
disp(f3dB,"3 dB frequency in Hz is :")
disp(alfa,"Value of alfa is :");
disp("Value of alfa shows that it is a Butterworth flter.");
disp(Khp,"Passband gain for a high pass filter is : ")