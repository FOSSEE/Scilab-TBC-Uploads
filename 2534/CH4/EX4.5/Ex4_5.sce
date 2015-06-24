//Ex4_5
clc
I = 10*10^-3
eta = 1//for germanium
VT = 26*10^-3
tawo = 6*10^-3
CD = I*tawo/eta/VT
disp("I = "+string(I)+"A")//forward current
disp("eta = "+string(eta))
disp("VT = "+string(VT)+"V")//voltagr at room temperature
disp("tawo = "+string(tawo)+"sec")//mean lifetime
disp("CD = I*tao/eta/VT = "+string(CD)+"F")//
