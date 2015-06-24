//Example 9.5
clc
disp("V_CC = +15 V")
vsat=0.9*15
format(5)
disp(vsat,"Therefore,  V_sat(in V) = 0.9 V_CC =")
disp("  R1 = 51 k-ohm,  R2 = 120 ohm")
vut=(13.5*120)/((51*10^3)+120)
format(8)
disp(vut,"V_UT(in V) = +V_sat*R2 / R1+R2 =")
vlt=(-13.5*120)/((51*10^3)+120)
disp(vlt,"V_LT(in V) = -V_sat*R2 / R1+R2 =")
h=(0.03169*2)*10^3
format(6)
disp(h,"H(in mV) = V_UT - V_LT =")
