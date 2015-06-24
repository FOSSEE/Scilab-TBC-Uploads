//Exmaple 3.13
clc
disp("Assume Q1 is normally OFF and Q2 is ON")
disp("The given waveform is at collector of Q1 i.e. V_C1")
disp("Therefore,  V_CE(sat) = 0.1 V  and  V_CC = 3 V")
vc1=0.6-0.1
format(4)
disp(vc1,"The overshoot in V_C1(in V) = delta'' =")
disp("delta = delta'' = 0.5 V")
disp("For germanium, V_BE(sat) = V_0 = 0.3 V")
disp("V_BE(cut-in) = V_Y = 0.1 V")
disp("r''_bb = 200 ohm")
disp("Now  delta = I''_B*r''_bb + V0 + V_Y")
ib=(0.3/200)*10^3
disp(ib,"Therefore,  I''_B(in mA) =")
rc=(3-0.6)/(1.5)
disp("While  delta'' = V_CC - I_B''*R_C - V_CE(sat)")
disp(rc,"Therefore,  R_C(in k-ohm) =")
disp("The waveform at base of Q2 is shown in fig 3.91")
