//Ex8_5
clc
RL = 22*10^3
hfb=-0.98
hob=7.6*10^-7
disp("RL = "+string(RL)+"ohm")//load resistance
disp("hfb = "+string(hfb))//forward current gain in CB amplifier
disp("hob = "+string(hob)+"mho")//output conductance in CB amplifier
Ai = -hfb/(1+(hob*RL))
disp("Ai = -hfb/(1+(hob*RL)) = "+string(Ai))//current gain

