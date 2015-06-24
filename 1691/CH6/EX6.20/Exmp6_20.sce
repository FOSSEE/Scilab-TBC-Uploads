//Example 6.20
clc
disp("V_CC = 20 V,  R_L = 20 ohm, turns ratio 1.58:1")
n=1/1.58
format(7)
disp(n,"  n = 1/1.58 = ")
rl=20/0.6329^2
disp(rl,"Therefore,  R''_L(in ohm) = R_L / n^2 =")
disp("(i) For maximum possible peak to peak output voltage, the power output is also maximum possible. For this condition the slope of the a.c. load line can be expressed as")
disp("R''_L = V_m/I_m = V_CC/I_CQ")
icq=20/49.928
format(4)
disp(icq,"Therefore,  I_CQ(in A) =")
ibq=0.4/40
format(5)
disp(ibq,"Therefore,  I_BQ(in A) = I_CQ/beta =")
disp("This is the required value of the base current")
disp("(ii)  P_ac = I_Irms^2 * R''_L")
disp("But for maximum power output condition,")
irms=0.4/sqrt(2)
format(8)
disp(irms,"I_Irms(in A) = I_Im/sqrt(2) = I_CQ/sqrt(2) =")
pac=49.928*0.2828^2
format(2)
disp(pac,"Therefore,  P_ac(in W) =")
disp("(iii)  %eta = P_ac/P_DC * 100")
pdc=20*0.4
disp(pdc,"Now  P_DC(in W) = V_CC * I_CQ =")
eta=400/8
format(3)
disp(eta,"%eta(in percentage) =")
