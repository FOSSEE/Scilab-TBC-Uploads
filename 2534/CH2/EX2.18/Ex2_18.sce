//Ex2_18
clc
L1 = 1*10^-3
L2 = 5*10^-3
LT = (L1*L2)/(L1+L2)
disp("L1 = "+string(L1)+"H")//inductance of coil 1
disp("L2 = "+string(L2)+"H")//inductance of coil 2
disp("1/LT = 1/L1 + 1/L2")
disp("LT = (L1*L2)/(L1+L2) = "+string(LT)+"H")//parallel inductance
