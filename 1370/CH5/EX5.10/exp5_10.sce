//Example 5.10 slip, net o/p power, rotor copper loss/phase, efficiency and resistance
clc
disp("The given values are,")
disp("P = 4, f = 50 Hz, T_sh = 300 N-m, T_lost = 50 N-m")
disp("Rotor frequency  = 120 cycles/min = 120/60 cycles/sec i.e. Hz")
disp("i.e.  f_r = 2 Hz")
disp("(i)  f_r = s*f")
s=2/50
format(5)
disp(s,"Therefore,  s = f_r/f =")
disp("(ii)  P_out = T_sh * omega = T_sh * 2*pi*N/60")
disp("Now  N = N_s(1-s)    at slip s = 0.04")
ns=(120*50)/4
format(5)
disp(ns,"N_s(in r.p.m) = 120f/P =")
n=1500*(1-0.04)
disp(n,"Therefore,  N(in r.p.m) = N_s(1-s) =")
po=(300*((2*%pi*1440)/60))*10^-3
format(8)
disp(po,"Therefore,  P_out(in kW) =")
disp("Remember that T_sh is not output torque available to load at shaft")
disp("(iii)  T_lost = 50 Nm in fiction")
f=50*((2*%pi*1440)/60)
format(9)
disp(f,"Therefore,  Frictional loss(in W) = T_lost * omega = T_lost * 2*pi*N/60 =")
disp("Now  P_out = P_in - frictional loss")
pin=45.2389+7.539822
disp(pin,"Therefore,  P_in(in kW) = P_out + frictional loss =")
disp("  We know, P_2:P_c:P_m  is  1:s:1-s")
disp("Therefore,  P_c/P_m = s/1-s")
pc=(52.77872*10^3)*(0.04/(1-0.04))
format(10)
disp(pc,"Therefore,  P_c(in W) = P_m * (s/1-s) =")
disp("These are total rotor copper losses")
rc=2199.1134/3
format(9)
disp(rc,"Therefore,  Rotor copper loss per phase(in W) = P_c/3 =")
disp("(iv)  Rotor efficiency = (Rotor output P_in / Rotor input P2)*100")
p2=2199.1134/0.04
format(12)
disp(p2,"Now  P2(in W) = P_c/s =")
re=52778.72*100/54977.83
format(3)
disp(re,"Therefore,  % Rotor eta(in percentage) =")
disp("(v)  I_2r = 60 A     given per phase")
disp("now  Rotor copper loss/ph = I_2r^2 * R2")
r2=733.0378/60^2
format(7)
disp(r2,"Therefore,  R2(in ohm/ph) =")
