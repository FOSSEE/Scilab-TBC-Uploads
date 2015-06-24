//Ex10_4
clc
Av1 = 100//initial voltage gain
beta = 0.001//feedback ratio
disp("Av1 = "+string(Av1))
disp("beta = "+string(beta))
Af1 = Av1/(1+beta*Av1)//initial gain with negative feedback
disp("Af1 = Av1/(1+beta*Av1) = "+string(Af1))

Av2 = 150//final voltage gain
beta = 0.001//feedback ratio
disp("Av2 = "+string(Av2))
disp("beta = "+string(beta))
Af2 = Av2/(1+beta*Av2)//final gain with negative feedback
disp("Af2 = Av2/(1+beta*Av2) = "+string(Af2))

change_in_gain = Af2 - Af1//required change in gain
disp("change in gain required = Af2 - Af1 = "+string(change_in_gain))
delta_Avf = change_in_gain/Af1
disp("delta_Avf = Af2-Af1/Af1 = "+string(delta_Avf)+"%")
