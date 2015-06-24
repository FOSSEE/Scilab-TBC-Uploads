//Example 5.3. frequency of induced emf in the rotor
clc
disp("The given values are,")
disp("P = 4,  f = 50 Hz,  N = 1470 r.p.m")
ns=(120*50)/4
format(5)
disp(ns,"N_s(in r.p.m) = 120f/P =")
s=(1500-1470)/1500
disp(s,"s = N_s-N / N_s =")
f=0.02*50
disp(f,"Therefore,  f_r(in Hz) = s*f =")
