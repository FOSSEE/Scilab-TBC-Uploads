//Example 6.35
clc
disp("I_CQ = 250 mA,  V_CEQ = 8 V")
disp("V_max = 15 V,  V_min = 1 V,  I_max = 450 mA,  I_min = 40 mA")
ipp=450-40
disp(ipp,"Therefore,  I_pp(in mA) = I_max - I_min =")
vpp=15-1
disp(vpp,"Therefore,  V_pp(in V) = V_max - V_min =")
vm=14/2
disp(vm,"Therefore,  V_m(in V) = V_pp/2 =")
im=410/2
disp(im,"Therefore,  I_m(in mA) = I_pp/2 =")
pac=(7*205*10^-3)/2
pdc=250*8*10^-3
n=71.75/2
pd=2-0.7175
format(7)
disp(pac,"(i)  P_ac(in W) = V_m*I_m/2 =                 ...output power")
disp(pdc,"(ii)  P_DC(in W) = I_CQ*V_CEQ =               ...input power")
disp(n,"(iii)  %eta(in %) = P_ac/P_DC * 100 =           ...efficiency")
disp(pd,"(iv)  P_d(in W) = P_DC - P_ac =                ...power dissipation")
