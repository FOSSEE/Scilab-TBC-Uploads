clear;
clc;
G=(integrate('(sin(P))^3','P',0,%pi))*integrate('1','Q',0,2*%pi)
Gd=4*%pi/G;
disp(Gd)
