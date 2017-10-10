nc = 0.87; nt = 0.9; T1 = 311; T3 = 1100; 
rp = 8; // P2/P1
P1 = 1; P2 = 8; P3 = 0.95*P2; P4 = 1;
g = 1.4; cv = 0.718; cp = 1.005; R = 0.287;
// With no cooling
T2s = T1*((P2/P1)^((g-1)/g));
T2 = T1 + (T2s-T1)/0.87;
T4s = T3*(P4/P3)^((g-1)/g);
n = (((T3-T4s)*nt)-((T2s-T1)/nc))/(T3-T2);
// With cooling
n_cycle = n-0.05;
x = 0.13;
r = 0.13/1.13;
disp("%",r*100,"Percentage of air that may be taken from the compressor is")