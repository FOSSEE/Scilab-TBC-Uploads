clc;
clear;
r1=75e6;
r2=150e6;
rb=r1+r2;
rf=rb;
x=.05;
xn=x*rb/1e6;
xeq=rb/rf;
X=xn+xeq;
fault=rb/X;
f=rb/xn;
fault=round(fault/1e4)*1e4
mprintf("fault level on LT sid eof transformer=%fMVA \n fault level when source of reactance is neglected=%fMVA",fault/1e6,f/1e6);
