//Example 5.22
clc
disp("P = 6, f = 50 Hz, s_0 = 1%, s_a = 3%")
ns=(120*50)/6
format(5)
disp(ns,"(a) N_s(in r.p.m) = 120f/P =                ...Synchronous speed")
n=1000*(1-0.01)
format(4)
disp(n,"(b) N_0(in r.p.m) = N_s*(1-s_0) =                   ...No load speed")
n=1000*(1-0.03)
format(6)
disp(n,"(c) N_ft(in r.p.m) = N_s*(1-s_a) =                   ...Full load speed")
disp("(d) Frequency of rotor current at standstill = f = 50 Hz")
sa=0.03*50
disp(sa,"(e) Frequency of rotor current at full load(in Hz) = s_a*f =")
