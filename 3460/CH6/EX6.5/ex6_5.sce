clc;
clear all;
d=2.588*1e-3;//diameter of wire
s=300*1e-3//spacing between wires
r=d/2;//radius of wire
Z0=276*log10(s/r);//characteristic impedence of line
disp(Z0,'characteristic impedence of line is');

