//Example 5.2
clc
disp("Given values are,")
disp("P = 4, f = 50 Hz,  %s = 4%")
disp("s = Full load absolute slip = 0.04")
ns=(120*50)/4
disp(ns,"N_s(in r.p.m) = 120*f / P =")
disp("s = N_s-N / N_s    where N_s = full load speed of motor")
disp("0.04 = 1500-N_s / 1500")
ns=1500-(1500*0.04)
disp(ns,"Therefore,  N_s(in r.p.m) =")
disp("This is the full load speed of the motor")
