//Example 1.19
clc
disp("Here, output terminals are B and ground, thus the forward gain is the gain of Q1 and it is,")
disp("  A_v= -33.11")
disp("Here  beta = V_f / V_B = V_f/V_o * V_o/V_C * V_C/V_B")
disp("where V_B and V_C are voltages at point B and C, respectively.")
disp("Therefore,  beta_BN = V_f/V_o * A_v3 * A_v2         because V_o/V_C = A_v3 and V_C/V_B = A_v2")
bbn=(5*10^-5)*(33.11^2)
format(7)
disp(bbn,"Therefore,  beta= ")
avf=-33.11/2.815
format(6)
disp(avf,"Therefore,  |A_vf| = A_vf / 1+|A_f|*beta =")
