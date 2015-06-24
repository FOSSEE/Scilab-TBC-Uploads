clc;
mw1=2*0.965*18;
mw2=3*0.005*18;
mw=mw1+mw2;

R=8314.5
T=288;
p=1.013*10^5;
v=R*T/p

mc=mw/v;

hfg=2441.8;
Qgt=38700;
Qn=Qgt-mc*hfg;

hs=3421;
hf=419.1;
Q=hs-hf;
s_o=31.6;
f_c=2.85;
nB=Q*s_o/(f_c*Qn);

disp(nB*100,"boiler efficiency is:");

g_o=25000;
n=g_o/(f_c*Qn)
disp(n*100,"overall thermal efficiency is:")
