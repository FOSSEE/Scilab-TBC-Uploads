//Exa 2.10
clc;
clear;
close;
format('v',6);

//Given Data
mw=100;//Kg
T=30;//min
T=T*60;//sec
P=1;//KW
Q=-50;//KJ
Sw=4.19;//KJ/KgK(Specific heat of water)
W=-P*T;//KJ
//Q=W+deltaU
deltaU=Q-W;//KJ
disp(deltaU,"Chnge in internal energy in  kJ : ");
delta_t=deltaU/mw/Sw;//sec
disp(delta_t,"Rise in temperature in degree C : ");
