P1 = 0.1e06;
T1 = 303;
T3 = 1173;
PR = 6; // Pressure ratio
rp = 6; nt = 0.8; nc = 0.8;
g = 1.4; cv = 0.718; cp = 1.005; R = 0.287;
j = (PR)^((g-1)/g);
T2s = j*T1;
T4s = T3/j;
T21 = (T2s-T1)/nc ; // T2-T1
T34 = nt*(T3-T4s); // T3-T4
Wt = cp*T34;
Wc = cp*T21;
T2 = T21+T1;
Q1 = cp*(T3-T2);
n = (Wt-Wc)/Q1;
T4 = T3-375;
T6 = 0.75*(T4-T2) + T2 ;
Q1_ = cp*(T3-T6);
n_ = (Wt-Wc)/Q1_;
I = (n_-n)/n ;
disp("%",I*100,"The percentage efficiency in cycle efficiency due to regeneration is")
