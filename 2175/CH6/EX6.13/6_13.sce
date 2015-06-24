clc;
ma=0.3/1000;//kg
Ra=0.287;
T=311;//K
V=21.63//m^3

p=ma*Ra*T*10^3/(V*10^5);

T2=36+273;//K
p2=0.0594;//bar
vg=23.97;//m^3/kg
pt=0.6624;//bar
pa=pt-p2;
mf=20000*0.3/1000;

Vr=mf*Ra*T2*10^3/(pa*10^5);

ms=Vr/vg

T3=300;//K
P3=0.0306;
v=mf*(Ra)*T3*10^3/(P3*10^5)

vg1=38.81;
steam=v/vg1;
disp("steam removed is:");
disp("kg/H",steam)
