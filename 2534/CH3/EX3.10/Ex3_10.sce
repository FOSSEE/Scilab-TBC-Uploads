//Ex3_10
clc
l = .03
d = 0.01
L = 0.18
Va = 1000
disp("l = "+string(l)+"m")//lenght of deflection plate
disp("d = "+string(d)+"m")//plate separation
disp("L = "+string(L)+"m")//distance of screen from plate
disp("Va = "+string(Va)+"V")//anode voltage
SE = (l*L)/(2*d*Va)
disp("SE = (l*L)/(2*d*Va) = "+string(SE)+"m/V")
