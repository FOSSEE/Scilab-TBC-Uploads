//Example 7.15
clc
disp("Given values are R_L = 1 k-ohm, V_m = 10 V peak")
disp("case(i) Ideal diode")
disp("Cut-in voltage V_T = 0 V, R_f = 0 ohm")
edc=10/%pi
format(5)
disp(edc,"Therefore,  E_DC(in V) = V_m/pi =")
idc=3.18
disp(idc,"Therefore,  I_DC(in mA) = E_DC/R_L =")
disp("case(ii) Silicon diode")
disp("Cut-in voltage V_T = 0.7 V")
edc=9.3/%pi
format(5)
disp(edc,"Therefore,  E_DC(in V) = V_m-V_T / pi =")
idc=2.96
disp(idc,"Therefore,  I_DC(in mA) = E_DC/R_L =")
