//clc()
Q1 = 10000;//kJ/hr
kJ = 1000;//J
hr = 3600;//s
Q = Q1*kJ/hr;//J/s
disp("J/s",Q,"Q = ")
x = 0.1;//m
A = 1//m^2
T = 800;//K
k = x*Q/(A*T);
disp("W/(m*K)",k,"thermal conductivity = ")
J = 1/4.1868;//cal
k1 = k*J*hr/1000;
disp("kcal/(h*m*C)",k1,"thermal conductivity = ")