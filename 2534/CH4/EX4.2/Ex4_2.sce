//Ex4_2
clc
Irs = 2.0*10^-6
I = 10*10^-3
VT = 26*10^-3
eta = 2//for silicon
disp("Irs = "+string(Irs)+"A")//reverse saturation current
disp("I = "+string(I)+"A")//forward current
disp("VT = "+string(VT)+"V")//voltage at room temperature
disp("eta = "+string(eta))
Vf = eta*VT*log((I/Irs)+1)//voltage produced
disp("Vf = eta*VT*log((I/Irs)+1) = "+string(Vf)+"V")
