//Example 1.2
clc
disp("The transistor capacitance is given by,")
disp("  CT = C(0) / [1+|VR/VJ|^n]")
disp("Now  C(0) = 80pF, n = 1/3 as diffused junction")
disp("     VR = 4.2 V,  VJ = 0.7 V")
ct=((80*10^-12)/((1+(4.2/0.7))^(1/3)))*10^12  // in pF
format(6)
disp(ct,"Therefore,  CT(pF) = ")
disp("the transistor capacitance is also given by,")
disp("  CT = K / [VR+VJ]^n")
format(10)
k=(41.82*10^-12)*((4.2+0.7)^(1/3))
disp(k,"Therefore,  K = ")