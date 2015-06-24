//Exmaple 5.9
clc
disp("Given values are,")
disp("P = 24, f = 50 Hz, R2 = 0.016 ohm, X2 = 0.265 ohm, N = 247 r.p.m")
ns=(120*50)/24
format(5)
disp(ns,"N_s(in r.p.m) = 120f/P =")
s=(250-247)/250
format(6)
disp(s,"s_f = Full load slip = N_s-N / N_s =")
sm=0.016/0.265
format(8)
disp(sm,"s_m = R2/X2 =")
tf=(2*0.06037*0.012)/((0.06037^2)+(0.012^2))
format(7)
disp(tf,"(i) T_F.L/T_m = 2*s_m*s_f / s_m^2+s_f^2 =")
ts=(2*0.06037)/((0.06037^2)+(1^2))
format(7)
disp(ts,"(ii) T_st/T_m = 2*s_m / 1+s_m^2 =")
