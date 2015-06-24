//Example 7.1
clc
disp("Forbidden gap for silicon is given by,")
disp("E_C = 1.21 - 3.6*10^-4 * T")
disp("Now  T = 35+273 = 308 K")
ec=1.21-(308*3.6*10^-4)
format(6)
disp(ec,"Therefore,  E_C(in eV) =")
disp("While forbidden gap for germanium is given by,")
disp("E_C = 0.785 - 2.23*10^-4 * T")
ec=0.785-(308*2.23*10^-4)
format(7)
disp(ec,"Therefore,  E_C(in eV) =")
