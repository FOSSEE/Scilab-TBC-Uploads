clc;
capacity_ac=778;//m^3/h
capacity=168.9;//m^3/h

red=(capacity_ac-capacity)*100/capacity_ac
disp("percentage reduction in air pump is:");
disp("%",red);

ms2=4.35;//kg/h
ms1=20000;//kg/h
ma1=6;//kg/h
ma2=ma1;
mc=20000;//apprx

hs2=2550.3;
hc=150.7;
hs1=2570.1;

cp=1.005;
T1=38;
T2=27;
ha1_ha2=cp*(T1-T2);

Q=ms2*hs2+{ma1*ha1_ha2}+mc*hc-ms1*hs1;

//mass of cooling water required
disp("mass of cooling water required");
t=5.5
M=-Q/(t*4.182);
disp("kg/h",M)
