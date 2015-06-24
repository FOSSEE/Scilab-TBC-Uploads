//Ex5_11
clc
Rf = 10
RL = 150
eta_r = 40.6/(1+Rf/RL)
disp("Rf = "+string(Rf)+"ohm")//forward resistance
disp("RL = "+string(RL)+"ohm")//load resistance
disp("eta_r = 40.6/(1+Rf/RL) = "+string(eta_r)+"%")//rectification efficiency
