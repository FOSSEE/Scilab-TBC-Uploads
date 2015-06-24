//Example 5.23
clc
disp("P = 6, f = 50 Hz, I_2r = 40 A, N = 960 r.p.m")
ns=(120*50)/6
format(5)
disp(ns,"Therefore,  N_s(in r.p.m) = 120f/P =")
s=40/1000
disp(s,"Therefore,  s = N_s-N / N_s =")
po=50*735.5
format(6)
disp(po,"P_out(in W) = 50*H.P =                 ...1 H.P = 735.5 W")
pin=36775+1200+300
disp(pin,"P_in(in W) = P_out + Mechanical losses + Gear loss =")
disp("Now  P_2:P_c:P_m  is  1:s:1-s")
disp("Therefore,  P_c/P_m = s/1-s")
pc=(38275*0.04)/(1-0.04)
format(10)
disp(pc,"Therefore,  P_c(in W) =               ...Total rotor copper loss")
r2=1594.7916/(3*40^2)
format(7)
disp("Now  P_c = 3 * I_2r^2 * R2")
disp(r2,"Therefore,  R2(in ohm/ph) =")
