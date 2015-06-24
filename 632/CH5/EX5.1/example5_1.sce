//clc()
V = 0.6;//m^3;
T = 473;//K
N = 1 * 10 ^ 3;//mol
R = 8.314;//Pa * m^3/molK
P = N * R * T / (V * 10^5);
disp("bar",P,"(a)Pressure calculated using ideal gas equation = ")
a = 0.4233;//N * m^4 / mol^2
b = 3.73 * 10^-5;//m^3/mol
P1 = (R*T/(V/N - b)-a/(V/N)^2)/10^5;
disp("bar",P1,"(a)Pressure calculated using van der waals equation = ")
