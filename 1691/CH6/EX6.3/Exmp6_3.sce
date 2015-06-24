//Example 6.3
clc
disp("R_L = 8 ohm, R''_L = 648 ohm")
disp("Now  R''_L = R_L / n^2")
n=8/648
format(8)
disp(n,"Therefore,  n^2 = R_L / R''_L =")
disp("Therefore,  n = 0.1111 = Turn ratio")
disp("But,  n = N2 / N1 = 0.1111")
disp("Therefore,  N1/N2 = 9")
disp("Generally the turns ratio is specified as Ni/N2 : 1 i.e. for this transformer it is 9:1")
