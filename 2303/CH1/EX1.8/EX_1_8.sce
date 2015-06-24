//Example 1.8
clc;
clear;
close;
t =0:0.001:0.5
x=sin(2*%pi*100*t);

E=integrate('(sin(2*%pi*100*t)^2)','t',-0.01,+0.01);
disp(E,"Energy of signal= ");
disp("Since the given signal has a finite energy, it is a ENERGY signal");
