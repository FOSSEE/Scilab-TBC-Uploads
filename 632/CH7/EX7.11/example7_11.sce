//clc()
//1 - methanol, 2 - ethanol, 3 - propanol
x1 = 0.45;
x2 = 0.3;
x3 = 1 - (x1 + x2);
P = 101.3;//kPa
// by drawing the temperature vs vapour pressure graph and interpolation,assuming,
T = 344.6;//K
Ps1 = 137.3;
Ps2 = 76.2;
Ps3 = 65.4;
y1 = x1 * Ps1 / P;
y2 = x2 * Ps2 / P;
y3 = x3 * Ps3 / P;
disp("K",T,"(a)Bubble point temperature = ")
disp("%",y1*100,"Composition of methanol in vapour = ")
disp("%",y2*100,"Composition of ethanol in vapour = ")
disp("%",y3*100,"Composition of propanol in vapour = ")
//again, for xi = 1
T1 = 347.5;//K
P1 = 153.28;
P2 = 85.25;
P3 = 73.31;
xa = x1 * P / P1;
xb = x2 * P / P2;
xc = x3 * P / P3;
disp("K",T1,"(b)Dew point temperature = ")
disp("%",xa*100,"Composition of methanol in liquid = ")
disp("%",xb*100,"Composition of ethanol in liquid = ")
disp("%",xc*100,"Composition of propanol in liquid = ")
