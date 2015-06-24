//Example 5.1
clc
disp("Given values are,")
disp("P = 4, f = 50 Hz,  N = 1410 r.p.m")
ns=(120*50)/4
disp(ns,"N_s(in r.p.m) = 120*f / P =")
disp("Full load absolute slip is given by,")
s=((1500-1410)/1500)
format(5)
disp(s,"s = N_s-N / N_s =")
s=0.06*100
disp(s,"Therefore,  %s =")
