T1 = 273+50;
rk = 16;
g = 1.4; // gamma
P3 = 70; cv = 0.718; cp = 1.005; R = 0.287;
T2 = T1*((rk^(g-1)));
P1 = 1; // in bar
P2 = P1*(rk)^g;
T3 = T2*(P3/P2);
Q23 = cv*(T3-T2);
T4 = (Q23/cp)+T3;
v43 = T4/T3; // v4/v3
v54 = rk/v43; // v5/v4 = (v1/v2)*(v3/v4)
T5 = T4*(1/v54)^(g-1);
P5 = P1*(T5/T1);
Q1 = cv*(T3-T2)+cp*(T4-T3);
Q2 = cv*(T5-T1);
n_cycle = 1-(Q2/Q1);
v1 = (R*T1)/P1;
v12 = (15/16)*v1; // v1-v2
Wnet = Q1*n1;
Pm = Wnet/(v12);
disp("%",n*100,"Efficiency of the cycle is")
disp("bar",Pm,"Mean effective pressure is")