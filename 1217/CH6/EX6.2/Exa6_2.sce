// Exa 6.2
clc;
clear;
close;
// given data 
R=10;//in Kohm
C=0.01;//in uF
R1=4.7;//in Kohm
RF=47;//in Kohm
fc=1/(2*%pi*R*1000*C*10^-6);//in Hz
AF=1+RF/R1;//unitless
disp(fc/1000,"Cut-off frequency in KHz is ; ")
disp(AF,"Pass band gain is ; ")