// exa 9.7 Pg 267

clc;clear;close;

// Given Data
two_beta=30;// degree
W=400*10**3;// N
d=100;// mm
p=12;// mm
mu=0.15;// coefficient of thread friction

dm=d-p/2;// mm
dc=d-p;// mm
l=2*p;// mm
alfa=atand(l/%pi/dm);// degree
mu_e=mu/cosd(two_beta/2);// virtual coefficient of friction
fi=atand(mu);// degree
Tf=W*dm/2*tand(alfa+fi);// N.mm (Frictional torque for raising load)
T=W*dm/4*tand(fi);// N.mm
To=W*dm/2*tand(alfa);// N.mm (Torque without friction)
eta1=To/Tf*100;// % 
printf('\n Efficiency during raising the load = %.2f %%',eta1)
eta2=T/To*100;// %
printf('\n Efficiency during lowering the load = %.2f %%',eta2)
// Note - answer & solution is wrong in the textbook.
