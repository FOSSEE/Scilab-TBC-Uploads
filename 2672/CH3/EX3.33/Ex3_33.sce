//Example 3_33
clc;
clear;
close;
format('v',5);
//given data :
R=10;///ohm
L=0.1;//H
C=8;//micro F
f0=1/2/%pi/sqrt(L*C*10^-6);//Hz
disp(f0,"(a) Resonant Frequency(Hz)");
Q=2*%pi*f0*L/R;//Q-factor
disp(Q,"(b) Q-factor");
f1=f0-R/4/%pi/L;//Hz
f2=f0+R/4/%pi/L;//Hz
disp(f2,f1,"(c) Half power frequencies, f1 & f2 in Hz are");
BW=f2-f1;//Hz
disp(BW,"Bandwidth(Hz)");
//Answer is not accurate in the book.
