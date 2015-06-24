//clc()
funcprot(0)
V1 = 15;//ft^3/min
ft = 0.3048;//m
min = 60;//secs
V = V1*ft^3/min;
disp("m^3/s",V,"Volumetric flowrate = ")
D = 1000;//kg/m^3
M = V * D;
disp("kg/s",M,"mass flowrate = ")