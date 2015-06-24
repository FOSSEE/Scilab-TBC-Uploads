//Example 1.6
clc
disp("(a) We know that")
disp("              dAf/Af = 0.1/1+beta*A * dA/A")
disp("Therefore,  1+beta*A = 37.5")
b=(36.5/2000)*100 // in percentage
format(6)
disp(b,"Therefore,  beta(in percentage) =")
af=2000/(1+(0.01825*2000))
disp(af,"(b)     Af = A / 1+beta*A =")
