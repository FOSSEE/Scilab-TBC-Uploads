//Example 5.15
clc
disp("P = 12, f = 50 Hz, R2 = 0.15 ohm, X2 = 0.25 ohm, E2 = 32 V per phase given")
disp("Now  T =  (k*s*E2^2*R2 / R2^2+s*X2^2)       where k = 3 / 2*pi*ns")
ns=(120*50)/12
format(4)
disp(ns,"N_s(in r.p.m) = 120f/P =")
ns=500/60
format(5)
disp(ns,"n_s(in r.p.s) = N_s/60 =")
tf=(3/(2*%pi*8.33))*((0.15*32^2)/((0.15^2)+(0.25^2)))
format(7)
disp(tf,"(i) T_st = (k*E2^2*R2 / R2^2+X2^2) = (3/2*pi*ns)*(k*E2^2*R2 / R2^2+X2^2) =")
disp("(ii) At  N = 480 r.p.m")
s=(500-480)/500
format(5)
disp(s,"s = N_s-N / N_s =")
tfi=(3/(2*%pi*8.33))*((0.04*0.15*32^2)/((0.15^2)+((0.04*0.25)^2)))
format(7)
disp(tfi,"Therefore,  T_F.L(in Nm) = (3/2*pi*ns)*(s*E2^2*R2 / R2^2+s*X2^2) =")
disp("(iii)  T_m = (3/2*pi*ns)*(E2^2 / 2*X2)   substituting s_m = R2/X2")
tm=(3/(2*%pi*8.33))*((32^2)/(2*0.25))
format(8)
disp(tm,"Therefore,  T_m(in Nm) =")
sm=0.15/0.25
format(4)
disp(sm,"(iv) Slip at T_m is,  s_m = R2/X2 =")
n=500*(1-0.6)
format(4)
disp(n,"Therefore,  N(in r.p.m) = N_s*(1-s_m) =")
