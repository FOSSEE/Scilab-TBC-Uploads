//clc()
F1 = 6*1000;//L/s
BOD1 = 3 * 10^-5;//g/L
BOD2 = 5 * 10^-3;//g/L
V = 16 * 10^3;//m^3/day
v = V * 10^3 / (24 * 3600);//L/s
//Let BOD of the effluent be BODeff,
BODeff = (BOD2 * (F1 + v) - BOD1 * F1) / ( v );
disp("g/L",BODeff,"BOD of the effluent of the plant = ")