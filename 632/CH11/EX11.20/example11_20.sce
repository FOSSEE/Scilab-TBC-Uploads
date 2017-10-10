clc
T = 273.15 - 30;//K
R = 8.314;
//lnPs = 14.2410 - 2137.72 / (T-26.72)
//dlnPs/dT = Hv / RT2
Hv = 2137.72 * R * T^2 / ( T - 26.72 )^2;
disp("kJ/kmol",Hv,"Heat of vaporization = ")