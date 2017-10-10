// exa 9.5 Pg 262
clc;clear;close;

// Given Data
d=12;// mm
dc=10;// mm
p=2;// mm
Do=10;//mm
mu=0.15;// coefficient of thread friction
mu_c=0.18;// coefficient of collar friction
F=100;// N
l=150;// mm

dm=dc+p/2;// mm
alfa=atand(p/(%pi*dm));// degree
fi=atand(mu);// degree
TfByW=dm/2*tand(alfa+fi);// where TfByW = Tf/W
TcByW=mu_c/3*Do;// where TcByW = Tc/W
TByW=TfByW+TcByW;// N.mm (total torque at B-B)
Tapplied=F*l;// N.mm (torque applied by the operator)
//putting T= Tapplied
W= Tapplied/TByW;// N
printf('\n (a) Clamping force between the jaws = %.f N',W)
eta=W*dm/2*tand(alfa)/Tapplied*100;// % 
printf('\n (b) Efficiency of vice = %.2f %%',eta)
Tf=TfByW*W;// N.mm
printf('\n (c) Torque at A-A, Tf = %.1f N.mm & Torque at B-B = %.f N.mm',Tf,Tapplied)
// Note- Answer in the textbook are not accurate.
