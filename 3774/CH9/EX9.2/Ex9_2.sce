// exa 9.2 Pg 257
clc;clear;close;

// Given Data
d=50;// mm
p=8;// mm
W=2;// kN
Do=100;// mm
Di=50;// mm
mu=0.15;// coefficient of thread friction
mu_c=0.10;// coefficient of collar friction
N=25;// rpm
two_beta=29;// degree

dm=d-p/2;// mm
dc=d-p;// mm
t=p/2;//mm
l=2*p;// mm
alfa=atand(p/(%pi*dm));// degree
mu_e=mu/cosd(two_beta/2);// virtual coefficient of friction
fi=atand(mu_e);// degree
Tf=W*dm/2*tand(alfa+fi);// N.mm
Tc=mu_c*W/4*(Do+Di);// N.mm
T=Tf+Tc;// N.mm
P=2*%pi*N*T/(60*10**3);// kW
printf('\n (a) Power required = %.3f kN',P)
To=W*dm/2*tand(alfa);// N.mm
eta=To/T*100;// % (efficiency)
printf('\n (b) Efficiency of screw = %.2f %%',eta)
