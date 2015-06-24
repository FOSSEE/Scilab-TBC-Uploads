//Ex11_10
clc
VCC = 18//collector voltage
Vp = 15//output peak voltage
RL = 12//load resistnce
disp("VCC = "+string(VCC)+"V")
disp("Vp = "+string(Vp)+"V")
disp("RL = "+string(RL)+"ohm")
Ip = Vp/RL//output peak current
Idc = (2/%pi)*Ip//input direct current
disp("Ip = Vp/RL = "+string(Ip)+"A")
disp("Idc = (2/%pi)*Ip = "+string(Idc)+"A")
Pi_dc = VCC*Idc//input power
disp("Pi_dc = VCC*Idc = "+string(Pi_dc)+"W")
Po_ac = (Vp^2)/(2*RL)//output power
disp("Po_ac = (Vp^2)/(2*RL) = "+string(Po_ac)+"W")
eta = Po_ac/Pi_dc//efficiency
disp("eta = Po_ac/Pi_dc = "+string(eta*100)+"%")
