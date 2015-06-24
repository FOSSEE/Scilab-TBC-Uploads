//Ex11_9
clc
VCC = 25//collector voltage
Vi = 9//inout rms voltage
RL = 10//load resistnce
Vi_peak = 1.414*Vi//input peak voltage
Vo = Vi_peak//output peak voltage
Po_ac = (Vo^2)/(2*RL)//output power
Io = Vo/RL//output current
IC = (2/%pi)*Io//collector current
Pi_dc = VCC*IC//input power
eta = Po_ac/Pi_dc//efficiency
disp("VCC = "+string(VCC)+"V")
disp("Vi = "+string(Vi)+"V")
disp("RL = "+string(RL)+"ohm")
disp("Vi_peak = (2^2)Vi = "+string(Vi_peak)+"V")
disp("Vo = Vi_peak = "+string(Vo)+"V")
disp("Po_ac = (Vo^2)/(2*RL) = "+string(Po_ac)+"W")
disp("Io = Vo/RL = "+string(Io)+"A")
disp("IC = (2/%pi)*Io = "+string(IC)+"A")
disp("Pi_dc = VCC*IC = "+string(Pi_dc)+"W")
disp("eta = Po_ac/Pi_dc = "+string(eta*100)+"%")
