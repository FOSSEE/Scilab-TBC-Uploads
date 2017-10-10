//EXA:3.5.1
clc;
clear;
close;
I=1.2 //current (in A)
N=300 //no. of turns
l=20*10^(-2) //circumference of ring(in m)
A=10*10^(-4) //cross-sectional area (in m^2)
u_0=4*%pi*10^(-7)
u_r=500 //permiability
R=l/(u_r*u_0*A) //reluctance(in H^(-1))
disp(R,'reluctance(in H^(-1))=')
P=1/R //permeance
disp(P,'permeance(in H)=')
mmf=I*N //mmf (in A-t)
phy=mmf/R 
disp(phy,'flux(in wb)=')
B=phy/A 
disp(B,'flux density(in T)=')