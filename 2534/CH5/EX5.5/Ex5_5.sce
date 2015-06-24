//Ex5_5
clc
disp("v = 12 sin(wt)")
Vm = 12
RL = 1*10^3
Rf = 10
Im = Vm/(RL+Rf)
Idc =Im/%pi
Vdc = Idc*RL
Irms = Im/2
Pi = (Irms^2)*(RL+Rf)
VNL = Vm/%pi
VL = Idc*RL
Regulation = (VNL - VL)/VL
disp("Vm = "+string(Vm)+"V")//amplitude of applied signal
disp("RL = "+string(RL)+"ohm")//load resistance
disp("Rf = "+string(Rf)+"ohm")//forward resistance
disp("Im = Vm/(RL+Rf) = "+string(Im)+"A")//peak current
disp("Idc = Im/pi = "+string(Idc)+"A")//D.C. current
disp("Vdc = Idc*RL = "+string(Vdc)+"V")//D.C, voltage
disp("Pi = (Irms^2)*(RL+Rf)")
disp("Irms = Im/2 = "+string(Irms)+"A")//rms current
disp("Pi = "+string(Pi)+"W")//input power
disp("%Regulation = (VNL - VL)/VL")
disp("VNL = Vm/pi = "+string(VNL)+"V")//non load voltage
disp("VL = Idc*RL = "+string(VL)+"")//load voltage
disp("%Regulation = "+string(Regulation*100)+"%")//percentage regulation


//   NOTE : THE POWER CALCULATED IN THE TEXTBOOK IS WRONG.
