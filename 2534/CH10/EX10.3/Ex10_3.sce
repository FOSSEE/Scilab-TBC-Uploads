//Ex10_3
clc
Av = 200// voltage gain
D = 0.05// harmonic distortion in amplifier
Df = 0.02//final reduced distortion
beta = (D/Df-1)/Av//feedback gain
disp("Av = "+string(Av))
disp("D = "+string(D))
disp("Df = "+string(Df))
disp("beta = (D/Df - 1)/Av = "+string(beta))
disp("beta = "+string(beta*100)+"%")
