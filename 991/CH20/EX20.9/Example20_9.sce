//Example 20.9. refer fig.20.35(a).
clc
format(6)
disp("(a) From Eq.(20.32), the time period, T = 2RC ln(R1+2R2 / R1)")
disp("          T = 2RC ln(116*10^3 + 2*100*10^3/116*10^3)")
disp("          T = 2RC ln(316*10^3/116*10^3)")
disp("          T = 2RC        (since ln(316*10^3/116*10^3) = 1)")
disp("Given     f = 1 kHz,  T = 1/f = 1 ms")
disp("That is,   2RC = 1*10^-3 sec")
disp("Therefore, the time constant RC = 0.5*10^-3 sec")
r=(0.5)/0.01 // in k-ohm
disp(r,"(b) With      C = 0.01 uF,  R(k-ohm) = 0.5*10^-3/0.01*10^-6 =")
disp("(c) Maximum value of differential input voltage is")
x=2*14*(100/(100+116))
disp(x,"          2*Vsat*(R2 / R1+R2) = ")
disp("Therefore, the peak values for the differential input voltage just exceed +-2 x 6.48 V")