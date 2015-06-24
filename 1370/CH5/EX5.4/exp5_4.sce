//Example 5.4
clc
disp("The given values are,")
disp("P = 8,  f = 50 Hz,  f_r = 2 Hz")
disp("Now    f_r = s*f")
s=2/50
format(5)
disp(s,"Therefore,  s =")
sp=0.04*100
disp(sp,"Therefore,  %s =             ...Full load slip")
disp("The corresponding speed is given by,")
disp("N = N_s*(1-s)                ...From s = N_s-N / N_s")
ns=(120*50)/8
disp(ns,"where    N_s(in r.p.m) = 120f/P =")
n=750*(1-0.04)
disp(n,"Therefore,  N(in r.p.m) =           ...Full load speed")
