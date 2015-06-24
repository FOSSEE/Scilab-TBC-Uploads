//Example 2.32
clc
disp("C = 20 pF,  L2 = 1000 uH,  L1 = 100 uH,  M = 20 uH")
leq=100+1000+40
format(5)
disp(leq,"Therefore,  L_eq(in uH) = L1 + L2 + 2M =")
f=(1/(2*%pi*sqrt(1140*20*10^-18)))*10^-6
format(6)
disp(f,"Therefore,  f(in MHz) = 1 / 2*pi*sqrt(L_eq*C) =")
disp("The feedback fraction beta is given by,")
b=100/1100
format(7)
disp(b,"beta = V_f/V0 = X_L1 / X_L1+X_L2 = L1 / L1+L2 =")
disp("It is a Hartley oscillator")
