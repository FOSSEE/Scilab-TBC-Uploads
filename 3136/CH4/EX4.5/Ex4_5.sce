clear all; clc;

disp("The b.e.p. of all  four trims are read as follows")
Dia=[9.25 8 7 6];
Q=[220 170 155 130];
H=[330 235 170 120];
Ps=[29 17 12.5 8];
eff=[62.5 57.5 53.5 49.5];
table=[Dia'   Q'   H'       Ps'       eff']
disp("Dia(in)  Q(gpm)  H(ft)  Ps(hp)  eff(%)")
disp(table)

disp("From the similarity laws Q is proportional to D, H proportional to D^2 and Ps proportional to D^3")

disp("The performance should be")

Di=[9.25 8 7 6];
Q=[220 190 166 143 ];
H=[330 246 189 139];
P_s=[29 18.7 12.5 7.9];
eff=[62.5 62.5 62.5 62.5];

disp("Dia(in)  Q(gpm)  H(ft)  P_s(hp)  eff(%)")
table=[Dia'   Q'   H'       P_s'       eff']
disp(table)
