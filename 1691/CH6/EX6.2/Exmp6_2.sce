//Example 6.2
clc
disp("R_L = 4 ohm,  N1 = 200,  N2 = 20")
n=20/200
format(4)
disp(n,"Therefore,  n = N2 / N1 =")
rl=4/(0.1^2)
disp(rl,"Therefore,  R''_L(in ohm) = R1 / n^2 =")
disp("As N2 < N1, the transformer is step down and hence R''_L > R_L, as the primary winding is high voltage winding.")
