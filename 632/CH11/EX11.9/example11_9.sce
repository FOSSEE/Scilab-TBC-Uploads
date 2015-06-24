//clc()
//Cp =1.436 + 2.18*10^-3*T;
m = 1000/3600;//kg/s
T1 = 380;//K
T2 = 550;//K
x = integrate('1.436 + 2.18*10^-3*T','T',T1,T2);
Q = m*x;
disp("kW",Q,"Heat load on the heater = ")