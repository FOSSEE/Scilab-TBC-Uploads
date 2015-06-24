// Exa 5.21
clc;
clear;
close;
// given data 
RT=50;//in Kohm
CT=0.001;//in uF
V=20;//in Volt
C=10;//in uF
fo=0.25/(RT*10^3*CT*10^-6);//in Hz
dfl=7.8*fo/V;//in Hz
dfc=sqrt(dfl/(2*%pi*3.6*10^3*C*10^-6));//in Hz
disp(fo/1000,"Free running frequency in KHz is :");
disp(dfl/1000,"Lock range in KHz is :");
disp(dfc,"Capture range in Hz is :");