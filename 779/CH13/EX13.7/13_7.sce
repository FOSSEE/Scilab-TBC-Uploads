rp = 6;
g = 1.4; cv = 0.718; cp = 1.005; R = 0.287;
T1 = 300; T3 = 1100; T0 = 300;
n_cycle = 1-(1/rp^((g-1)/g));
j = rp^((g-1)/g);
T2 = T1*j;
T4 = T3/j;
Wc = cp*(T2-T1);
Wt = cp*(T3-T4);
WR = (Wt-Wc)/Wt;
Q1 = 100; // in MW
PO = n_cycle*Q1;
m_dot = (Q1*1e06)/(cp*(T3-T2));
R = m_dot*cp*T0*((T4/T0)-1-log(T4/T0));
disp("%",n_cycle*100,"The thermal efficiency of the cycle is")
disp(WR,"Work ratio is")
disp("MW",PO,"Power output is")
disp("MW",R/1e06,"Energy flow rate of the exhaust gas stream is")
