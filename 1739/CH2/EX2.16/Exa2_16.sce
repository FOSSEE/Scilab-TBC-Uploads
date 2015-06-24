//Exa 2.16
clc;
clear;
close;
//Given data :
d=60;//in um
a=d/2;//in um
NA=0.25;//Unitless
lambda=1.1;//in um
v=2*%pi*a*NA/lambda;//unitless
N=v^2/4;//No. of modes
disp(N,"Number of supported guided modes :");