clc
p1=8; //bar
T1=453; //K
p2=1.4; //bar
T2=293; //K
T0=T2;
p0=1; //bar
m=1; //kg
C1=80; //m/s
C2=40; //m/s
cp=1.005; //kJ/kg K
R=0.287; //kJ/kg K 
disp("(i) Reversible work and actual work ")
A1=cp*(T1-T0)-T0*(cp*log(T1/T0)-R*log(p1/p0))+C1^2/2/10^3; //Availability at the inlet
A2=cp*(T2-T0)-T0*(cp*log(T2/T0)-R*log(p2/p0))+C2^2/2/10^3; //Availability at the exit

W_rev=A1-A2;
disp("W_rev =")
disp(W_rev)
disp("kJ/kg")

W_act=cp*(T1-T2) + (C1^2-C2^2)/2/10^3;
disp("W_act =")
disp(W_act)
disp("kJ/kg")

disp("(ii) Irreversibilty and effectiveness =")

I=W_rev-W_act;
disp("Irreversibilty =")
disp(I)
disp("kJ/kg")

Effectiveness=W_act/W_rev*100;
disp("Effectiveness =")
disp(Effectiveness)
disp("%")