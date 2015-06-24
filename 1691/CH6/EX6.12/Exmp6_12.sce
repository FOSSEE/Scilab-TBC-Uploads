//Example 6.12
clc
disp("R_L = 8 ohm, V_CC = +-12 V hence dual supply version")
pac=0.5*(12^2/8)
format(2)
disp(pac,"(1)  (P_ac)_max(in W) = 1/2 * V_CC^2/R_L =")
disp("(2)  P_DC = V_CC*I_DC  but I_DC = 2*I_m / pi")
disp("          = V_CC * (2*I_m/pi)")
disp("Now  R_L = V_m/I_m i.e. I_m = V_m/R_L and V_m = V_CC")
pdc=(12^2*2)/(8*%pi)
format(8)
disp(pdc,"Therefore,  P_DC(in W) = V_CC * 2 * V_CC/R_L * 1/pi =")
pdt=11.4591-9
disp(pdt,"Therefore,  Total P_D(in W) = P_DC - P_ac =")
pd=2.4591/2
format(7)
disp(pd,"Therefore,  P_D per transistor(in W) =")
n=900/11.4591
format(5)
disp(n,"(3)  %eta(in percentage) = P_ac/P_DC * 100 =")
