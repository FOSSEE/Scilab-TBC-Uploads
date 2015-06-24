clc;
clear all;
d=25*1e-3;// outside diameter of outer copper tubing
t=1.6*1e-3;//thickness of tubing
d1=d-(2*t);
d2=6*1e-3;//outer diameter of inner tubing
Z0=138*log10(d1/d2);//characteristic impedence of copp
disp(Z0,'characteristic impedence of line is');

