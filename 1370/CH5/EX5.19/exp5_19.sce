//Example 5.19
clc
disp("P = 4, f = 50 Hz, T_sh = 159 Nm, s = 5% = 0.05")
ns=(120*50)/4
format(5)
disp(ns,"N_s(in r.p.m) = 120f/P =")
n=1500*(1-0.05)
disp(n,"Therefore,  N(in r.p.m) = N_s*(1-s_m) =")
po=159*((2*%pi*1425)/60)
format(11)
disp(po,"Therefore,  P_out(in W) = T_sh * omega =")
pm=23726.8785+500
disp(pm,"Therefore,  P_m(in W) = P_out + Friction and windage loss =")
disp("(a) P_2:P_c:P_m  is  1:s:1-s")
p2=24226.8785/(1-0.05)
disp("Therefore,  P_2/P_m = 1/1-s")
disp(p2,"Therefore,  P_2(in W) =               ...Rotor input")
pi=25501.9774+1000
disp(pi,"(b) P_in(in W) = P_2 + Stator losses =            ...Motor input")
eta=(23726.8785/26501.9774)*100
format(7)
disp(eta,"(e) %eta(in percentage) = P_out/P_in * 100 =")
