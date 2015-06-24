// Exa 6.9
clc;
clear;
close;
// given data 
R2=20;//in Kohm
R3=20;//in Kohm
R=R2;//in Kohm
C2=0.47;//in uF
C3=0.47;//in uF
C=C2;//in uF
RF=56;//in Kohm
R1=56;//in Kohm
AF=1+RF/R1;//unitless
alfa=3-AF;//unitless
Klp=1.238;//unitless
disp(alfa,"Value of alfa is :");
disp("alfa=1 corresponds to chebyshev filter response.");
f3dB=Klp/(2*%pi*R*1000*C*10^-6);//in Hz
disp(f3dB,"Critical frequency in Hz is :")
