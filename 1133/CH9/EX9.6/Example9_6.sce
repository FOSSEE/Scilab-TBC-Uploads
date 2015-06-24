//Example 9.6
clc
disp("As input is applied to the non-inverting terminal, the circuit is non-inverting Schmitt trigger.")
disp("  R1 = 100 k-ohm,  R2 = 1 k-ohm")
vut=13.5*(1/100)
format(6)
disp(vut,"Therefore,  V_UT(in V) = +V_sat * R2/R1 =")
vlt=-13.5*(1/100)
disp(vlt,"Therefore,  V_LT(in V) = -V_sat * R2/R1 =")
