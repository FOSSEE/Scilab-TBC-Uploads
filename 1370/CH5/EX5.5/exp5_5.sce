//Example 5.6
clc
disp("The given values are, K = Rotor turns/Stator turns = 1/2 = 0.5 and")
disp("P = 4, f = 50 Hz, N = 1455 r.p.m, E_line = 415 V")
ns=(120*50)/4
format(5)
disp(ns,"N_s(in r.p.m) = 120f/P =")
disp("For a given load, N = 1455 r.p.m")
s=(1500-1455)/1500
disp(s,"Therefore,  s = N_s-N / N_s =")
f=0.03*50
disp(f,"(i)  f_r(in Hz) = s*f =")
disp("(ii) At standstill, induction motor acts as a transformer so,")
disp("E_2ph/E_1ph = rotor turns/stator turns = K")
disp("But ratio of stator to rotor turns is given as 2, i.e.")
disp("  N1/N2 = 2      Therefore,  N2/N1 = 1/2 = K")
disp("and  E_1line = 415 V")
disp("The given values are always line values unless and until specifically stated as per phase.")
e1=415/sqrt(3)
format(6)
disp(e1,"Therefore,  E_1ph(in V) = E_1/sqrt(3) =              ...As star connection E_line = sqrt(3)*E_ph")
disp("Therefore,  E_2ph/E_1ph = 1/2")
e2=239.6/2
disp(e2,"Therefore,  E_2ph(in V) =            ...Rotor induced e.m.f on standstill")
disp("(iii) In running condition,")
er=0.03*119.8
disp(er,"E_2r(in V) = s*E_2 =")
disp("The value of rotor induced e.m.f in the running condition is also very very small")
