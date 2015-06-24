//clc()
T = 510;//K
P = 26.6;//bar
Tc = 425.2;//K
Pc = 38;//bar
Zc = 0.274;
R = 8.314;
Pr = P / Pc;
Tr = T / Tc;
disp(Pr,"Pr = ")
disp(Tr,"Tr = ")
//From fig. 5.4 and 5.5 from the text book
Z = 0.865;
D = 0.15;
Z1 = Z + D * ( Zc - 0.27);
V = R * T * Z1 / (P * 10^5);
disp("m^3/mol",V,"Molar volume of n-butane = ")