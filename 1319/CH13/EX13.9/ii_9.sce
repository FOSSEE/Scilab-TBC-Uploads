// Compute Inductance and EMF induced
clc;
clear;

d=0.25;
l=%pi*d;
n=1000;
area=6.25*(10^-4);
I=200;
mo=4*%pi*(10^-7);

L=mo*area*n*n/l;

V=L*I;

disp('H',L,'The Inductance of toriod')
disp('volts',V,'The Induced EMF in the toriod')

