//Ex2_16
clc
L1 = 100*10^-3
L2 = 50*10^-3
K = 0.3
M = K*(L1*L2)^0.5
disp("L1 = "+string(L1)+"H")//inductance of coil 1
disp("L2 = "+string(L2)+"H")//inductance of coil 2
disp("K = "+string(K))//coefficient of coupling
disp("M = K*(L1*L2)^0.5")
disp("M = "+string(M)+"H")//mutual inductance
