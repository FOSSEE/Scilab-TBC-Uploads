//Ex5_12
clc
Rf = 12.5
RL = 100
eta_r = 80.1/(1+Rf/RL)
disp("Rf = "+string(Rf)+"ohm")//forward resistance
disp("RL = "+string(RL)+"ohm")//load resistance
disp("eta_r = 80.1/(1+Rf/RL) = "+string(eta_r)+"%")//rectification efficiency
