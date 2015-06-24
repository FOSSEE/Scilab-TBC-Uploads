//Ex 6.6
clc;
clear;
close;
format('v',6);
//Data given
R1=1;//kohm
R2=1;//kohm
R=1;//kohm
C=4.7;//micro F
f0=1/(2*%pi*R*10^3*C*10^-6);//Hz//Oscillating Frequency
disp(f0,"Oscillation frequency(Hz)");
