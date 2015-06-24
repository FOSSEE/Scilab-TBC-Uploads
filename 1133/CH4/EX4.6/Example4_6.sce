//Example 4.6
clc
disp("The frequency is given by,")
disp("  f = 1 / 2*pi*sqrt(C*L_eq)")
leq=(2*10^-3)+(20*10^-6)
format(8)
disp(leq,"where  L_eq = L1 + L2 =")
disp("For  f = f_max = 2050 kHz")
format(5)
c=(1/(4*(%pi^2)*((2050*10^3)^2)*0.00202))*10^12  // in pF
disp(c,"Therefore,  C(in pF) =")
disp("For  f = f_min = 950 kHz")
c=(1/(4*(%pi^2)*((950*10^3)^2)*0.00202))*10^12  // in pF
format(6)
disp(c,"Therefore,  C(in pF) =")
disp("Hence C must be varied from 2.98 pF to 13.89 pF, to get the required frequency variation.")
