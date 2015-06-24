//Example 9.11
clc
disp("Choose op-amp LM318 with V_sat as +- 13.5 V with supply voltage +- 15 V")
disp("  V_UT = + 5 V")
disp("Now  V_UT = (R2 / R1+R2)*V_sat")
disp("Therefore,  5 = (R2 / R1+R2)*13.5")
disp("Therefore,  R1 + R2 = 2.7*R2")
disp("Therefore,  R1 = 1.7*R2")
disp("Choose  R2 = 10 k-ohm")
r1=1.7*10
disp(r1,"Therefore,  R1(in k-ohm) =")
disp("The designed circuit is shown in fig.9.46")
