//Example 6.8 
clc;
clear;
//part a :
Ao=.1;// amplitude at minimum frequency in mm
A=100;//maximum amplitude
Q=A/Ao;//quality factor
disp(Q,"Quality factor")
//part b
w=100;//resonance frequency in rad/sec
T=Q/w;//energy decay time
disp(T,"energy decay time in sec")
//part c
hw=1/(2*T);// half width of power resonance curve
disp(hw,"half width of power resonance curve in rad/sec")
