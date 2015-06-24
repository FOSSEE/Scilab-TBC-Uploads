//Example 6.34
clc
disp("V_CC = 12 V,  I_PP = 100 mA,  R_L = 5 ohm")
disp("Therefore,  I_m = I_PP/2 = 50 mA")
pac=((2500*10^-6)*5)/2
format(8)
disp(pac,"(i)  P_ac(in W) = I_m^2*R_L / 2 =")
disp("(ii)  P_ac(max) = 1/2 * V_CC^2/R_L")
disp("But  P_ac = V_m*I_m/2 and V_m = V_CC for maximum power")
rl=12^2/0.6
format(4)
disp(rl,"Therefore,  R''_L(in ohm) = ")
disp("But  R''_L = R_L/n^2  i.e. 240 = 5/n^2")
disp("Therefore,  n^2 = 0.02083  i.e. n = 0.1443 = N2/N1")
disp("Therefore,  N1/N2 = 6.928 : 1")
