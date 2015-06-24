// Exa 5.19
clc;
clear;
close;
// given data 
R=1;//in Kohm
C=3.6;//in uF
fo=1/(2*%pi*R*1000*C*10^-6);// in Hz
disp(fo,"The frequency of oscillation in Hz is :");