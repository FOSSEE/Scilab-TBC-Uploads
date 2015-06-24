//Example 6.6
clc
disp("R_L = 4 k-ohm,  (P_ac)_D = 0.85 W")
disp("The current without signal is I_CQ = 31 mA")
disp("The current with signal is I_CQ + B0 = 34 mA")
disp("The increase is due to harmonic content in the signal")
disp("Therefore,  B0 = 34 - 31 = 3 mA")
disp("But,  B2 = B0 = 3 mA")
disp("Now  (P_ac)_D = P_ac * [1+D2^2]      ... Assuming only second harmonic")
disp("Therefore,  (P_ac)_D = 1/2*B1^2*R_L * [1 + B2^2/B1^2]")
disp("Therefore,  (P_ac)_D = 1/2*B1^2*R_L + 1/2*B2^2*R_L")
disp("0.85 = 1/2*B1^2*(4*10^3) + 1/2*(9*10^-6)*(4*10^3)")
disp("Therefore,  B1 = 20.396 mA")
d2=300/20.396
format(7)
disp(d2,"Therefore,  D2(in percentage) = |B2|/|B1| * 100 =")
