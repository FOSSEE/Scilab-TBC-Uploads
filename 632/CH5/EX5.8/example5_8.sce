//clc()
P = 6000;//kPa
T = 325;//K
xn2 = 0.4;
xethane = 0.6;
an2 = 0.1365;//N m^4 / mol^2
bn2 = 3.86 * 10^-5;//m^3/mol
aethane = 0.557;//N m^4 / mol^2
bethane = 6.51 * 10^-5;//m^3/mol
Pcn2 = 3394;//kPa
Tcn2 = 126.2;//K
Pcethane = 4880;//kPa
Tcethane = 305.4;//K
R = 8.314;
V = R * T / (P*1000);
disp("m^3/mol",V,"(a)Molar volume by ideal gas equation =")
a = (xn2 * (an2^0.5) + xethane * (aethane^0.5))^2;
b = (xn2*bn2 + xethane*bethane);
//substituting the above values in van der waals equation, and solving, we get
V1 = 3.680 * 10^-4;//m^3/mol
disp("m^3/mol",V1,"(b)Molar volume by van der waals equation =")
Prin2 = P/Pcn2;
Trin2 = T/Tcn2;
Priethane = P/Pcethane;
Triethane = T/Tcethane;
// using compressibilty chart, 
Zn2 = 1;
Zethane = 0.42;
Z = xn2 * Zn2 + xethane * Zethane;
V2 = Z * R * T / P;
disp("m^3/mol",V2,"(c)Molar volume based on compressibilty factor =")
Pri1n2 = xn2*P/Pcn2;
Tri1n2 = T/Tcn2;
Pri1ethane = xethane*P/Pcethane;
Tri1ethane = T/Tcethane;
// using compressibilty chart, 
Zn21 = 1;
Zethane1 = 0.76;
Z1 = xn2 * Zn21 + xethane * Zethane1;
V3 = Z1 * R * T / P;
disp("m^3/mol",V3,"(c)Molar volume based on daltons law =")
Tc = xn2 * Tcn2 + xethane * Tcethane;
Pc = xn2 * Pcn2 + xethane * Pcethane;
Zc = 0.83;
V4 = Zc * R *T / P;
disp("m^3/mol",V4,"(d)Molar volume by kays method =")
