//Ex5_3
clc
Vm = 12
RL = 1.5*10^3
Im = Vm/RL
Irms = Im/(2^.5)
Idc = (2*Im/%pi)
r =(((Irms/Idc)^2)-1)^.5
disp("Vm = "+string(Vm)+"V")//peak voltage to full rectifier
disp("Im = Vm/RL = "+string(Im)+"A")//peak current
disp("Irms = Im/(2^0.5) = "+string(Irms)+"A")//rms current
disp("Idc = (2*Im/pi) = "+string(Idc)+"A")//D.C. current
disp("r = (((Irms/Idc)^2)-1)^0.5 = "+string(r))//ripple factor
