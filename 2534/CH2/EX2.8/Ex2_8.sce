//Ex2_8
clc
C1 = 0.5*10^-6
C2 = 0.5*10^-6
CT = (C1*C2)/(C1+C2)
disp("C1 = "+string(C1)+"F")//capacitance 1
disp("C1 = "+string(C1)+"F")//capacitance 2
disp("1/CT = 1/C1 + 1/C2 = (C1*C2)/(C1+C2) = "+string(C1*C2/(C1+C2))+"F")//series capacitance
// proper ans. = 0.25*10^-6F
