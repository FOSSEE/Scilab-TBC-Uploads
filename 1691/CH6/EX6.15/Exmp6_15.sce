//Example 6.15
clc
disp("V_CC = 20 V,  R_L = 4 ohm")
vm=(2*20)/%pi
format(8)
disp(vm,"For (P_d)max,  V_m(in V) = 2/pi * V_CC = ")
disp("R_L = V_m / I_m")
im=12.7324/4
format(6)
disp(im,"Therefore,  I_m(in A) = V_m / R_L =")
idc=(2*3.183)/%pi
format(7)
disp(idc,"Therefore,  I_dc(in A) = 2*I_m / pi =")
pac=(0.5*12.7324^2)/4
format(8)
disp(pac,"Therefore,  P_ac(in W) = 1/2 * V_m^2/R_L =")
pdc=20*2.0254
format(7)
disp(pdc,"and  P_dc(in W) = V_CC * I_DC =")
pdm=40.508-20.2542
format(8)
disp(pdm,"Therefore,  Total (P_d)max(in W) = P_dc - P_ac =")
pdma=20.2538/2
disp(pdma,"Therefore,  (P_d)max(in W) per transistor =")
