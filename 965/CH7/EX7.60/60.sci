clc;
clear all;
disp("average heat transfer coefficient")
tb=27;// degree C
d=19/1000;//m diameter of tube
U=0.061;//m/s
L=1.5;//m length of tube
ts=38;//degree C
mus=5.233*10^(-4);// Pa s
mub=5.892*10^(-4);// Pa s
kb=0.1591;// W/m.K
rhob=876.6;// kg/m^3
cpb=1757;// j/kg.K
Prb=6.5;
Reb=rhob*U*d/mub;
Nu=1.86*(Reb*Prb/(L/d))^0.33*(mub/mus)^0.14;
h=k*Nu/d;
xv=0.05*Reb*d;// velocity depth
xt=xv*Prb;// temperature depth
disp("m",xv,"velocity depth =")
disp("m",xt,"temperature depth =")
