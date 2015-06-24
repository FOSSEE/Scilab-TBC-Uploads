clc;
clear all;
C=2*1e-12;//given capacitance
L=500*1e-9;//given inductance
Z0=sqrt(L/C);//characteristic impedence for section
disp(Z0,'characteristic impedence');



