//Ex5_14
clc
C = 10*10^-3
f = 50
Idc = 200*10^-3
Vr = Idc/(2*f*C)
disp("C = "+string(C)+"F")//circuit capacitance
disp("f = "+string(f)+"Hz")//operating frequency
disp("Idc = "+string(Idc)+"A")//D.C. current
disp("Vr = Idc/(2*f*C) = "+string(Vr)+"V")//ripple voltage
