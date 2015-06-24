clc;
T1=-30+273;//K
T2=32+273;//K

COP=T1/(T2-T1);

eff=0.75;
acctual_COP=eff*(COP);

Q=5;//kW
W=Q/acctual_COP;

disp("required powar input is:");
disp("kW",W);
