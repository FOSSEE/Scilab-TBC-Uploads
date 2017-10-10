//EXA:3.7.1
clc;
clear;
close;
l=10*10^(-2) //circumference of ring(in m)
A=20*10^(-4) //cross-sectional area(in m^2)
u_r=500 //permeability of iron
u_0=4*%pi*10^(-7)
B=0.8 //flux density(in T)
N=100 //no. of turns
R=l/(u_0*u_r*A)
phy=B*A
mmf=phy*R
I_e=mmf/N //exciting current
disp(I_e,'Exciting current (in A)=')
E=mmf*phy/2
disp(E,'Energy stored(in J)=')