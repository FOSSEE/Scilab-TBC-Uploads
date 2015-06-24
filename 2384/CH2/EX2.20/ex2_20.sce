// Exa 2.20
clc;
clear;
close;
format('v',5)
// Given data
R1 = 5;// in ohm
R2 = 10;// in ohm
R3 = 5;// in ohm
V1 = 60;// in v
V2 = 30;// in V
//-R1*i1 - R3*i1 - V2+V1 = 0;
i1 = (V2-V1)/(R1+R3);// in A
V_acrossR3 = R3*i1;// in V
Vth = V_acrossR3+V1;// in V
V_AB =Vth;// in V
disp(V_AB,"The Thevenins voltage in V is");
R = (R1*R3)/(R1+R3);// in ohm
Rth = R2+R;// in ohm
disp(Rth,"The Thevenins resistance in ohm is");
