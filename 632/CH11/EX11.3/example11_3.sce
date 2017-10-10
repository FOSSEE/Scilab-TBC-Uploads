clc
d = 100 /1000;//m
g = 9.81;
m = 50;//kg
P = 1.01325*10^5;//Pa
A = %pi * (d^2)/4;
Fatm = P * A;
Fwt = m * g;
Ftotal = Fatm + Fwt;
P = Ftotal / A;
disp("bar",P/10^5,"(a)Pressure of the gas = ")
z = 500/1000;//m
w = Ftotal * z;
disp("J",w,"(b)Work done by the gas = ")