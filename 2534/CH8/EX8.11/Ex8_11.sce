//Ex8_11
clc
Av = -250
Ai = -50
RL = 12*10^3
disp("Av = "+string(Av))//voltage gain
disp("Ai = "+string(Ai))//current gain
disp("RL = "+string(RL)+"ohm")//load resistance
Ri = Ai*RL/Av
disp("Ri = Ai*RL/Av = "+string(Ri)+"ohm")//input resistance
