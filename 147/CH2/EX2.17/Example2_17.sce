close();
clear;
clc;
V = 100; //V
Rab = 3; //ohm
Rac = 6; //ohm
Rbc = 9; //ohm
Rao = 9; //ohm
Rbo = 6; //ohm
Rco = 3; //ohm
rac = (Rao*Rco + Rao*Rbo + Rbo*Rco)/Rbo;
rbc = (Rao*Rco + Rao*Rbo + Rbo*Rco)/Rao;
rab = (Rao*Rco + Rao*Rbo + Rbo*Rco)/Rco;
Rab1 = (rac*Rac/(rac+Rac)) + (rbc*Rbc/(rbc+Rbc));
Rab2 = Rab*rab/(Rab+rab);
R = Rab1*Rab2/(Rab1+Rab2);
//power supplied 'P'
P = V^2/R; //W
mprintf("Power supplied, P = %0.1f W",P);