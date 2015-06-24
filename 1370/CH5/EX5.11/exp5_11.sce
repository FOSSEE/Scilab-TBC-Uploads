//Example 5.11
clc
disp("P_out = 24 kW, I_L = 57 A")
disp("P = 8, N = 720 r.p.m, f = 50 Hz")
disp("I_L = 415 V, cos(phi) = 0.707")
ns=(120*50)/8
format(4)
disp(ns,"N_s(in r.p.m) = 120f/P =")
s=(750-720)/750
format(5)
disp(s,"Therefore,  s = N_s-N / N_s =")
disp("P_m - mechanical loss = P_out")
pin=24000+1000
format(6)
disp(pin,"Therefore,  P_in(in W) = P_out + mechanical loss = 24*10^3 + 1000 =")
disp("For rotor P2:P_c:P_m  is  1:s:1-s")
disp("Therefore,  P_c/P_m = s/1-s")
pc=(25000)*(0.04/(1-0.04))
format(8)
disp(pc,"Therefore,  P_c(in W) = P_m * (s/1-s) =")
po=((24*10^3)/((2*%pi*720)/60))
format(8)
disp(po,"(i) Shaft torque  T_sh(in Nm) = P_out/omega = P_out / (2*pi*N/60) =")
t=((25*10^3)/((2*%pi*720)/60))
disp(t,"(ii) Gross torque T(in Nm) = P_out/omega = P_out / (2*pi*N/60) =")
disp("(iii) Rotor copper losses = 1041.66 W")
disp("Now  P2/P_c = 1/s")
p2=1041.66/0.04
disp(p2,"Therefore,  P2(in W) = P_c/s =")
pin=sqrt(3)*415*57*0.707
format(9)
disp(pin,"And net input  P_in(in W) = sqrt(3)*V_L*I_L*cos(phi) =")
disp("Stator current per phase = I_L = 57 A  (as star connected)")
disp("R_s = Stator resistance per phase  = 0.1 ohm")
st=3*(57^2)*0.1
format(6)
disp(st,"Therefore,  Stator copper losses(in W) = 3*I_s^2*R_s")
disp("Now  P_in - Stator losses = P_2")
sl=28966.96-26041.5
format(8)
disp(sl,"Therefore,  Stator losses(in W) =")
disp("But  Stator losses = Stator iron loss + Stator copper loss")
stp=2925.46-974.7
disp(stp,"Therefore,  Stator iron losses(in W) =")
disp("(iv)  Stator copper losses = 974.7 W")
disp("(v) Stator iron losses = 1950.76 W")
eta=(100*24*10^3)/28966.96
format(6)
disp(eta,"(iv) % eta(in percentage) = P_out/P_in * 100 =")
