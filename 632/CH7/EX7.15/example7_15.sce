//clc()
T = 379.2;//K
P = 101.3;//kPa
Ps = 70;//kPa
Molality = 5;
Pws = exp(16.26205 - 3799.887/(T - 46.854));
k = P / Pws;
Pws1 = Ps / k;
T1 = 3799.887 / (16.26205 - log( Pws1)) + 46.854;
disp("K",T1,"Boiling point of the solution = ")