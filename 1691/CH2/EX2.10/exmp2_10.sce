//Example 2.10
clc
disp("L1 = 20 uH,  L2 = 2 mH")
leq=(20*10^-6)+(2*10^-3)
format(10)
disp(leq,"Therefore,  L_eq(in H) = L1 + L2 =")
disp("For f = f_max = 2.5 MHz")
disp("f = 1 / 2*pi*sqrt(C*L_eq)")
c=(1/(((2*%pi*2.5*10^6)^2)*(2.002*10^-3)))*10^12
format(7)
disp(c,"Therefore,  C(in pF) =")
disp("For f = f_min = 1 MHz")
c=(1/(((2*%pi*1*10^6)^2)*(2.002*10^-3)))*10^12
format(8)
disp(c,"Therefore,  C(in pF) =")
disp("This C must be varied from 2.0244 pF to 12.6525 pF")
