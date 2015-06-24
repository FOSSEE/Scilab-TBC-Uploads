//Ex14_7
clc
Af = -20//closed loop gain of op-amp
R = 10*10^3//output resistance
Rf = -Af*R//feedback resistance
disp("Af = "+string(Af))
disp("R = "+string(R)+"ohm")
disp("Rf = -Af/R = "+string(Rf)+"ohm")
