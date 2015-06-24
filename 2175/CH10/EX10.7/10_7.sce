clc;
v=650*10^3/3600;
KE=(1/2*v^2);
T0=-18+273;
cp=1.005;
Ieff=0.9;
T01=KE/10^3/cp+T0;
T01s=T0+Ieff*(T01-T0)

p02!p01=9;
y=1.4;
T02s=T01*(p02!p01)^[(y-1)/y];

Ieff2=0.89;
T02=T01+(T02s-T01)/Ieff2

W=cp*(T02-T01);
p01!p0=1.215;
p03!p4=p02!p01*p01!p0;
T03=1123;
y2=1.333;
T4=T03/[(p03!p4)^{(y2-1)/y2}];
C4=180.5;
cps=1.15*10^3;
T04=T4+C4^2/(2*cps);
Ieff3=0.93;
Wo=cps*(T03-T04)*Ieff3/1000
Ieff4=0.98;
NW=(Wo-W)*Ieff4;
Q=cps*(T03-T02)/1000
Teff=NW/Q
disp("%",Teff*100,"Thermal efficiency");
