//Example 4.9
clc
disp("P = 10,  N_a = 600 r.p.m,  slots = 90")
disp("phi = 16 mWb,  E_line = 11 kW")
f=6000/120
format(3)
disp("N_s = 120f / P")
disp(f,"Therefore,  f(in Hz) =")
eph=(11*10^3)/sqrt(3)
format(9)
disp(eph,"For star connection, E_ph(in V) = E_line/sqrt(3) =")
disp("Now  E_ph = 4.44*K_c*K_d*phi*f*T_ph")
disp("K_c = 1 as no information about short pitching is given")
n=90/10
disp(n,"n = slots/pole =")
m=9/3
disp(m,"m = slots/pole/phase = n/3 =")
beta=180/9
disp(beta,"beta = slot angle = 180/n =")
kd=sind(30)/(3*sind(10))
format(7)
disp(kd,"Therefore,  K_d = sin(m*beta/2) / m*sin(beta/2) =")
disp("Therefore,  6350.853 = 4.44*1*0.9598*16*10^-3*50*T_ph")
tph=6350.853/(4.44*1*0.9598*16*50*10^-3)
format(5)
disp(tph,"Therefore,  T_ph =")
zph=2*1862
disp(zph,"Therefore,  Z_ph = 2*T_ph =")
disp("These are armature conductors per phase required to be connected in series.")
