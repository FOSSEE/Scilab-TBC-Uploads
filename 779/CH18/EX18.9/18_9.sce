T1 = 283; P21 = 2.5; // P2/P1
P32 = 2.1; // P3/P2
ns = 0.85; ma = 5; cp = 1.005; g = 1.4;
T2s = T1*(P21)^((g-1)/g);
T2 = T1 + (T2s-T1)/ns;
T3 = T2-50;
T4s = T3*(P32)^((g-1)/g);
T4 = T3 + (T4s-T3)/ns;
P = ma*cp*((T2-T1)+(T4-T3));
disp("kW",P,"Total compressor power is")