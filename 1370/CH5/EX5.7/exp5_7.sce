//Example 5.7 calculate torque developed on full load by the motor.
clc
disp("P = 4, f = 50 Hz, R2 = 0.1 ohm, X2 = 1 ohm, N = 1440 r.p.m")
disp("Stator turns/Rotor turns = 2/1")
disp("Therefore,  K = E2/E1 = Rotor turns/Stator turns = 1/2 = 0.5")
ns=(120*50)/4
format(5)
disp(ns,"N_s(in r.p.m) = 120f/P =")
disp("E_1line = 400 V              ...Stator line voltage given")
e1=400/sqrt(3)
format(7)
disp(e1,"Therefore,  E_1ph(in V) = E_1line/sqrt(3) =")
disp("But  E_2ph/E_1ph = 0.5 = K")
e2=230.94/2
disp(e2,"Therefore,  E_2ph(in V) =")
s=(1500-1440)/1500
format(5)
disp(s,"Full load slip,  s = N_s-N / N_s =")
ns=1500/60
disp("n_s(in r.p.s) = Synchoronous speed in r.p.s")
disp(ns,"              = N_s/60 =")
t=(3/(2*%pi*25))*((0.04*0.1*115.47^2)/((0.1^2)+(0.04^2)))
format(6)
disp(t,"T(in N-m) = (3 / 2*pi*ns) * (s*E2^2*R2 / R2^2+(s*X2)^2) =")
