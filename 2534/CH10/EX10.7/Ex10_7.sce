//Ex10_7
clc
Po = 100//output power
RL = 10//load resistance
disp("Po = "+string(Po)+"W")
disp("RL = "+string(RL)+"ohm")
vo = (RL*Po)^0.5//output voltage
vi = 2//input voltage
disp("vo = (Rl*Po)^0.5 = "+string(vo)+"V")
disp("vi = "+string(vi)+"V")
Av = vo/vi//voltage gain
disp("Av = vo/vi = "+string(Av))
D = 0.04// harmonic distortion in amplifier
Df = 0.0002//distortion after feedback
beta = (D/Df-1)/Av//feedback gain
disp("D = "+string(D))
disp("Df = "+string(Df))
disp("beta = (D/Df - 1)/Av = "+string(beta))
