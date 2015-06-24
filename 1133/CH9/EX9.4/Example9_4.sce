//Example 9.4
clc
disp("V_UT = +4 V,  V_LT = -4 V,  Supply = +- 15 V")
disp("+- V_sat = 0.9 x [Supply] = +- 13.5 V = Vo")
disp("For op-amp 741,  I_B(max) = 500 nA")
disp("Therefore,  I2 = 100I_B(max) = 50 uA")
r2=(4/(50*10^-6))*10^-3
disp(r2,"Therefore,  R2(in k-ohm) = V_UT / I2 =")
i2=(4/(82*10^3))*10^6
format(6)
disp(i2,"Recalculating I2,  I2 = V_UT / R2 =")
r1=((13.5-4)/(48.78*10^-6))*10^-3
format(7)
disp(r1,"Therefore,  R1 = Vo-V_UT / I2 = +V_sat-V_UT / I2 =")
disp("The designed circuit is shown in fig")
