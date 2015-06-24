//clc()
V = 0.6 * 10^-3;//m^3
T = 473;//K
Tc = 405.5;//K
Pc = 112.8 * 10 ^ 5//Pa
R = 8.314;
a = 0.4278 * (R^2) * (Tc ^ 2.5)/Pc;
b = 0.0867 * R * Tc / Pc;
P1 = (R*T/(V - b) - a/((T^0.5)*V*(V + b)))/10^5;
disp("bar",P1,"Pressure developed by gas = ")