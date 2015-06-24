// Exa 6.7
clc;
clear;
close;
// given data 
C2=0.1;//in uF
C3=0.0333;//in uF
alfa=2*sqrt(C3/C2);//unitless
disp(alfa,"According to the value of alfa i.e. : ");
disp("This filter is situated between Butterworth and the Chebyshev, hence approximating Klp=1.1");
Klp=1.1;//unitless
R=2.25;//in Kohm
f3dB=Klp/(2*%pi*R*sqrt(C2*C3));//in KHz
disp(f3dB,"f3dB in KHz is : ");
//Note : Answer in the book is wrong