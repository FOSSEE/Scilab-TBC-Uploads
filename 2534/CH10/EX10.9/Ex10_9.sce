//Ex10_9
clc
A = 150//gain of amplifier
beta = 0.05//feedback ratio
disp("A = "+string(A))
disp("beta = "+string(beta))
Af = A/(1+beta*A)//gain with negative feedback
disp("Af = A/(1+beta*A) = "+string(Af))
fL = 20*10^3//lower 3dB frequency
fU = 160*10^3//upper 3dB frequency
disp("fL = "+string(fL)+"Hz")
disp("fU = "+string(fU)+"Hz")
fLf = fL/(1+beta*A)//lower 3dB gain with negative feedback
disp("fLf = fL/(1+beta*A) = "+string(fLf)+"Hz")
fUf = fU*(1+beta*A)//upper 3dB gain with negative feedback
disp("fUf = fU*(1+beta*A) = "+string(fUf)+"Hz")
