//Example 9.9
clc
disp("Given  +V_sat = 12 V,    -V_sat = -12 V,    V_H = 6 V")
disp("We know that hysteresis width is given as")
disp("  V_H = (R2/R1+R2)[+V_sat-V_sat]")
disp("Therefore,  R2 / R1+R2 = V_H / +V_sat-V_sat")
r=6/(24)
disp(r,"Therefore,  R2 / R1+R2 =")
disp("Therefore,  R2 = 0.25R1 + 0.25R2")
disp("Therefore,  0.75R2 = 0.25R1")
r2=0.25/0.75
format(7)
disp(r2,"Therefore,  R2 / R1 =")
disp("Assuming  R2 = 10 k-ohm")
r1=(10000/0.3333)*10^-3
format(3)
disp(r1,"  R1(in k-ohm) =")
