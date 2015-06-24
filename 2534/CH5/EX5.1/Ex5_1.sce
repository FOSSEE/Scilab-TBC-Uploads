//Ex5_
clc
Vm = 24
RL = 1.8*10^3
Im = Vm/RL
Irms = Im/2
Idc = Im/(%pi)
r = ((Irms/Idc)^2 - 1)^.5
disp("Vm = "+string(Vm)+"V")//applied voltage to half wave rectifier
disp("RL = "+string(RL)+"ohm")//load resistance
disp("Im = Vm/RL = "+string(Im)+"A")//peak current
disp("Irms = Im/2 = "+string(Irms)+"A")//rms current
disp("Idc = Im/pi = "+string(Idc)+"A")//D.C. current
disp("r ((Irms/Idc)^2 - 1)^.5 = "+string(r))//ripple factor
