//Example 4.4
clc
disp("E_line = 4000 V,  f = 50 Hz,  N_s = 750 r.p.m,  m = 3,  K_c = 1")
eph=4000/sqrt(3)
format(9)
disp(eph,"E_ph(in V) = E_line/sqrt(3) =")
p=(120*50)/750
disp("(i) N_s = 120f / P")
disp(p,"Therefore,  P =")
disp("(ii) n = slots/pole = m*3 = 9")
b=180/9
disp(b,"beta = 180/n =")
kd=sind(30)/(3*sind(10))
format(7)
disp(kd,"Therefore,  K_d = sin(m*beta/2) / m*sin(beta/2) =")
ns=9*8
disp(ns,"Number of slots = n * P =")
z=72*12
disp(z,"Z = Slots * counductors/slots =")
zp=864/3
disp(zp,"Therefore,  Z_ph = Z/3 =")
tp=288/2
disp(tp,"Therefore,  T_ph = Z_ph/2 =")
phi=2309.401/(4.44*0.9598*50*144)
format(8)
disp("Therefore,  E_ph = 4.44*K_c*K_d*phi*f*T_ph")
disp(phi,"Therefore,  phi(in Wb) =                  ... flux per pole")
