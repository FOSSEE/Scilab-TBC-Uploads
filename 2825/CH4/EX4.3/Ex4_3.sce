//Ex4_3 Pg-214
clc

disp("    Ratio of rectification or efficiency of halfwave rectifier,")
disp("   n = 0.406 = DC power deliverd to the load/AC input powerfrom transformer secondary ")
DC_power=500 //ddc power deliverd to the load
n=0.406 //efficiency
AC_in_power=DC_power/n //AC input powerfrom transformer secondary
printf("\n AC input powerfrom transformer secondary =%.0f Watt",AC_in_power)
