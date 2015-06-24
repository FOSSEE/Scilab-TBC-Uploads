clc;
T1=703;//K
p1=6.8;//bar
p2=1.013;//bar
gama=1.4;
T2=T1/[(p1/p2)^([gama-1]/gama)];

//from graph:
T2s=423;//K
cp=1.005;
inc_ent=cp*log(T2/T2s);
disp("increasi in entropy is:");
disp("kJ/kg K",-inc_ent)
