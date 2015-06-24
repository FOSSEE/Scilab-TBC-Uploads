//Ex6_12
clc
//given, collector voltage swings between 11V to 4V
//thus,
vc = 11-4
disp("vc = 11 - 4 = "+string(vc)+"V")//PEAK-to-PEAK collector voltage
//given, collector current swings between 5mA to 1.4mA
//thus,
ic = (5 - 1.4)*10^-3
disp("ic = 5m - 1.4m = "+string(ic)+"A")//PEAK-to-PEAK collector current
