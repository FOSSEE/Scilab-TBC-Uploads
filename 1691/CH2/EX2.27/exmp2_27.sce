//Example 2.27
clc
disp("The frequency required is, f = 1 MHz and for FET, u = 20")
disp("Now  u = C2/C1  for oscillations")
disp("Therefore,  20 = C2/C1")
disp("Therefore,  C2 = 20*C1       ....(1)")
disp("Let  C1 = 0.01 uF  hence  C2 = 0.2 uF")
ceq=((0.01*0.2)/(0.21))*10^3
format(7)
disp(ceq,"Therefore,  C_eq(in nF) = C1*C2 / C1+C2 =")
disp("Now  f = 1 / 2*pi*sqrt(L*C_eq)")
l=(1/(((2*%pi*1*10^6)^2)*(9.5238*10^-9)))*10^6
format(5)
disp(l,"Therefore,  L(in uH) =")
disp("The baising resistances can be selected as,")
disp("R1 = 12 M-ohm  and  R2 = 8 M-ohm")
disp("These resistances must be large")
disp("The designed circuit is shown in the fig 2.59")
