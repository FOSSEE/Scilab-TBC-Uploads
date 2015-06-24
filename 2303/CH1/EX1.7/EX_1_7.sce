//Example 1.7
clc;
clear;
close;
t =0:0.01:10
F=1000;
x=sin(2*%pi*F*t);

P={integrate('(sin(2*180*F*t)^2)','t',-0.001,+0.001)}/(2*1/F);
disp(P,"Power of signal= ");
disp("Since the given signal has a finite power, it is a POWER signal");
