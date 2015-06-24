//Ex5_4
clc
Idc = 10*10^-3
Irms = 14*10^-3
RL = 1*10^3
Pdc = (Idc^2)*RL
Pac = (Irms^2)*RL
disp("Idc = "+string(Idc)+"A")//D.C. current
disp("Irms = "+string(Irms)+"A")//rms current
disp("RL = "+string(RL)+"ohm")//load resistance
disp("Pdc = (Idc^2)*RL = "+string(Pdc)+"W")//D.C. power 
disp("Pac = (Irms^2)*RL = "+string(Pac)+"W")//A.C. power
disp("eta_r = Pdc/Pac = "+string(Pdc/Pac*100)+"%")//Rectification efficiency

