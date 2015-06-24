//clc()
Sgr = 0.879;
F = 5;//m^3/h
D = Sgr * 1000;
m = F * D/3600;//kg/s
P = 3500;//kPa
W = P * m * 1000/ D;
disp("W",W,"Power requirement for the pump = ")