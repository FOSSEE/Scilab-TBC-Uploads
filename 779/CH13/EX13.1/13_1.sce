T1 = 273+35;
P1 = 100e03; // in kN/m2
Q1 = 2100;
R = 0.287;
v1 = 0.884; v2 = 0.11; v3 = v2;
rk = 8; g = 1.4; // gamma
n_cycle = 1-(1/rk^(1.4-1));
v12 = 8; // v1/v2
v1 = (R*T1)/P1;
v2 = v1/8;
T2 = T1*(v1/v2)^(g-1);
cv = 0.718;
T3 = Q1/cv + T2
P21 = (v1/v2)^g;
P2 = P21*P1;
P3 = P2*(T3/T2);
Wnet = Q1*n_cycle;
Pm = Wnet/(v1-v2);
disp("MPa",P3/1e06,"Maximum pressure is")
disp("K",T3,"Temperature of the cycle is")
disp("%",n_cycle*100,"Cycle efficiency is")
disp("MPa",Pm/1e06,"Mean effective pressure is")



