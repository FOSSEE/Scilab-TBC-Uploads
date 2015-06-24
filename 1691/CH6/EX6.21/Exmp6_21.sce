//Example 6.21
clc
disp("R_L = 8 ohm,  P_ac(max) = 40 W")
disp("2*N1 = 160,  N2 = 40")
disp("N1 = 80")
n=40/80
format(4)
disp(n,"n = N2/N1 =")
rl=8/0.5^2
disp(rl,"Therefore,  R''_L(in ohm) = R_L / n^2 =")
disp("Under maximum condition, V_CC = V_m")
disp("Therefore,  P_ac(max) = 1/2 * V_CC^2/R''_L")
vcc=sqrt(40*2*32)
format(6)
disp(vcc,"Therefore,  V_CC(in V) =")
disp("This is the required value of V_CC")
