T1 = 275; T3 = 310;
P1 = 1 ; P2 = 4;
T2s = T1*(P2/P1);
nc = 0.8;
T2 = T1 + (T2s-T1)*nc;
pr = 0.1;
P3 = P2-0.1;
P4 = P1+0.08;
PR = P3/P4;
disp(PR,"Pressure ratio for the turbine is")
T4s = T3*(1/PR)^(0.286);
nt = 0.85;
T4 = T3-(T3-T4s)*nt;
COP = (T1-T4)/((T2-T3)-(T1-T4));
disp(COP,"COP is")
