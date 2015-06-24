//Example 14.2.
clc
format(6)
Af=100
dAf=0.02
dA=0.2
disp("We have,      dAf/Af = dA/A * 1/(1+A*beta)")
disp("  dAf/Af = dA/A * 1/(1+A*beta)")
Ab=dA/dAf
disp(Ab,"Therefore,     (1 + A*beta) =")
disp("Also, the gain with feedback is")
disp("      Af = A / (1+A*beta)")
A=Af*Ab
disp(A,"Therefore,      A =")
disp("       1 + A*beta = 10; i.e. A*beta = 9")
beta=9/A
disp(beta,"Therefore,      beta =")