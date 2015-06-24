//clc()
//2Fe + 3/2O2 = Fe2O3
Hliberated = 831.08;//kJ
Q = -Hliberated*1000;
disp("J",Q,"Q = ")
//P(V) = (n)RT
//W = P(V) = (n)RT
n = -1.5;
R = 8.314;
T = 298;//K
W = (n) * R * T;
disp("J",W,"W = ")
U = Q - W;
disp("J",U,"U = ")