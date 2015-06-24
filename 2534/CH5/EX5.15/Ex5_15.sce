//Ex5_15
clc
C = 600*10^-6
T = 20*10^-3
Vr = 1.2
Vdc = 9
Vac =Vr/(2*(3^.5))
r = Vac/Vdc
Idc = (Vr*C)/(T/2)
RL = Vdc/Idc
disp("C = "+string(C)+"F")//rectifier capacitance
disp("T = "+string(T)+"s")//time
disp("Vr = "+string(Vr)+"V")//ripple voltage
disp("Vdc = "+string(Vdc)+"V")//D.C. voltage
disp("Vac = "+string(Vac)+"V")//A.C. voltage
disp("r = "+string(r))//ripple factor
disp("Idc = "+string(Idc)+"A")//D.C. current
disp("RL = "+string(RL)+"ohm")//load resistance
