//Ex11_7
clc
RL = 3.6*10^3//output impedence of power amplifier
RL_dash = 4//resistance of speaker
n = (RL/RL_dash)^.5//turns ratio
disp("RL = "+string(RL)+"ohm") 
disp("RL_dash = "+string(RL_dash)+"ohm") 
disp("n = RL/RL_dash = "+string(n)) 
disp("turn ratio = "+string((numer(n)))+": "+string(denom(n)))
