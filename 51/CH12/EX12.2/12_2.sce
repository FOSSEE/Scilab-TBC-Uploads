clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\12_2data.sci");
U2=r2*2*%pi*N/(60*12);//ft/sec
Vr2=(1400/(7.48*60*2*%pi*(r2/12)*(b/12)));//ft/sec
V2tangential=U2-(Vr2*cotg(beta2*%pi/180));//ft/sec
hi=U2*V2tangential/32.2;//ft
disp("ft",hi,"The ideal head rise=")
d=1.94;//slugs/(ft^3)
Wshaft=(d*Q*U2*V2tangential/(7.58*60))/550;//hp
disp("hp",Wshaft,"The power transferred to the fluid=")
