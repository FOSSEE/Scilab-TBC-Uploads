//Ex2_11
clc
C = 10*10^-6
delta_V = 100
delta_t = 10
ic = C*delta_V/delta_t
disp("C = "+string(C)+"F")//capacitance
disp("delta_V = "+string(delta_V)+"V")//change in voltage
disp("delta_t = "+string(delta_t)+"sec")//change in time
disp("ic = C*(delta delta_V/delta_t) = "+string(ic)+"A")//calculation for instantaneous current
