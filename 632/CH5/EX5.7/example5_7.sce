//clc()
T = 510;//K
P = 26.6;//bar
Tc = 425.2;//K
Pc = 38;//bar
w = 0.193;
R = 8.314;
Pr = P / Pc;
Tr = T / Tc;
disp(Pr,"Pr = ")
disp(Tr,"Tr = ")
//From fig. 5.6 and 5.7 from the text book
Z0 = 0.855;
Z1 = 0.042;
Z = Z0 + w*Z1;
disp(Z,"Z = ")
V = R * T * Z / (P * 10^5);
disp("m^3/mol",V,"Molar volume of n-butane = ")