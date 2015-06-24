//Example 6.8
clc
disp("R_L = 12 ohm,  n = N2/N1 = 1/3 = 0.333, eta_trans = 78.5%")
rl=12/(0.333^2)
format(4)
disp(rl,"Therefore,  R''_L = R_L / n^2 =")
pac=(0.5*20^2)/108
format(7)
disp("(i) For P_max, V_m = V_CC")
disp(pac,"Threfore,  (P_ac)_max(in W) = 1/2 * V_CC^2/R''_L =")
disp("But  eta_trans = 78.5%")
pl=0.785*1.8518
disp(pl,"Therefore,  P_L(in W) = eta_trans * (P_ac)_max =")
vm=(2*20)/%pi
format(8)
disp(vm,"(ii) Condition for (P_d)_max is V_m(in V) = 2*V_CC/pi =")
pd=(2*20^2)/(108*%pi^2)
format(7)
disp(pd,"Therefore,  (P_d)_max(in W) = 2*V_CC^2 / pi^2*R''_L =")
pdm=0.7505/2
disp(pdm,"Therefore,  (P_d)_max(in W) per transistor =")
disp("(iii) (P_ac)_max = V_rms * I_rms = V_m/sqrt(2) * I_m/sqrt(2) = V_m*I_m / 2  and  V_m = V_CC")
disp("Therefore,  1.8518 = 20*I_m / 2")
im=(2*1.8518)/20
disp(im,"Therefore,  I_m(in A) = (I_c)_max =")
ibm=(0.1851/25)*10^3
disp(ibm,"and  (i_b)_max(in mA) = (i_c))max / h_fe =")
