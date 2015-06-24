clc;
Va_Vd=14/(300*2);
p2=7;
p1=1.013;
n=1.3;
Vs=Va_Vd/[(1.05)-(0.05*[(p2/p1)^(1/n)])];
disp("swept volume of compressor is:");
disp("m^3",Vs);

T1=288;//K
T2=T1*[(p2/p1)^([n-1]/n)];
disp("delivery temperature is:");
disp("K",T2);

V=14/60;
P=[n/(n-1)]*{[p1*V*10^5]/(10^3)}*{[(p2/p1)^[(n-1)/n]]-1};
disp("indicated power is:");
disp("kW",P)
