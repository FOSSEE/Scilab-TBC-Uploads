//Example 3.9
clc
disp("Here, output terminals are B and ground, thus the forward gain is the gain of Q1 and it is,")
disp("  A_BN = -33.11")
disp("However, Q2 and Q3 must be considered as a part of feedback loop")
disp("Here  beta_BN = V_f / V_B = V_f/V_o * V_o/V_C * V_C/V_B")
disp("where V_B and V_C are voltages at point B and C, respectively.")
disp("Therefore,  beta_BN = V_f/V_o * A_v3 * A_v2         because V_o/V_C = A_v3 and V_C/V_B = A_v2")
bbn=-(5*10^-5)*(33.11^2)
format(7)
disp(bbn,"Therefore,  beta_BN = -R1/R_g * A_v3 * A_v2 =")
disp("Note that the loop gain - beta_BN * A_BN = A^3_Vo * R1/Rg = -1.815 = -A*beta")
disp("It should be clear tht regardless ofwhere the output terminals are taken, the loop gain is unchanged.")
avf=-33.11/2.815
format(6)
disp(avf,"Therefore,  A_vf = A_BN / 1+A*beta =")