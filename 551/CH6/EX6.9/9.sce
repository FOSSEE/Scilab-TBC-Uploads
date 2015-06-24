clc
R=0.287; //kJ/kgK
cp=1.005; //kJ/kgK
m=25/60; //kg/s
p1=1; //bar
p2=2; //bar
T1=288; //K
T0=T1;
T2=373; //K

W_act=cp*(T2-T1); //W_actual
W_total= m*W_act;

disp("Total actual power required =")
disp(W_total)
disp("kW")

ds=cp*log(T2/T1) - R*log(p2/p1);
Wmin=cp*(T2-T1) - T0*(ds);

disp("Minimuumm work required = ")
W=m*Wmin;
disp(W)
disp("kW")