//Example 5.18
clc
disp("P = 8, f = 50 Hz, f_s = 1.5 Hz")
disp("f_s = s*f")
s=1.5/50
format(5)
disp(s,"Therefore,  s =            ...Slip")
ns=(120*50)/8
format(4)
disp(ns,"N_s(in r.p.m) = 120f/P =")
n=750*(1-0.03)
format(6)
disp(n,"N(in r.p.m) = N_s*(1-s_m) =                   ...Speed of the motor")
