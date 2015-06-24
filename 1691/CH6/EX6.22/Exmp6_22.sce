//Example 6.22
clc
disp("For a common collector configuration the voltage gain is 1")
disp("Therefore,  V_in(peak) = V_out(peak) = 20 V")
disp("i.e.  V_m = 20 V")
disp("Now  V_m/I_m = R_L")
im=20/16
format(5)
disp(im,"Therefore,  I_m(in A) = V_m/R_L =")
disp("while  V_CC = 25 V")
pdc=(2*25*1.25)/%pi
format(8)
disp(pdc,"Now  P_DC(in W) = 2*V_CC*I_m / pi =")
pac=(20*1.25)/2
format(5)
disp(pac,"P_ac(in W) = V_m*I_m / 2 =")
eta=1250/19.8943
format(7)
disp(eta,"Therefore,  %eta(in percentage) = P_ac*100 / P_DC =")
