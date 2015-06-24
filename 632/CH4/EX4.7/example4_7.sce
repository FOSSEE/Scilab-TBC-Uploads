//clc()
per1 = 93;//% ( 1 = methane)
per2 = 4.5;//% (2 = ethane)
per3 = 100 - (per1 + per2);//% ( 3 = N2);
T = 300;//K
p = 400;//kPa
P3 = p * per3 / 100;
v = 10;//m^3
V2 = per2 * v / 100;
M1 = 16.032;
M2 = 30.048;
M3 = 28;
N1 = per1;
N2 = per2;
N3 = per3;
m1 = M1 * N1;
m2 = M2 * N2;
m3 = M3 * N3;
m = m1 + m2 + m3;
Vstp = 100 * 22.4143 * 10^-3;//m3 at STP
D = m /(1000 * Vstp);
Pstp = 101.325;//kPa
T1 = 273.15;//K
V = T * Pstp * Vstp / ( T1 * p);
D1 = m /(1000 * V);
Mavg = m /100;
mper1 = m1 * 100 / (m1 + m2 + m3);
mper2 = m2 * 100 / (m1 + m2 + m3);
mper3 = m3 * 100 / (m1 + m2 + m3);
disp("kPa",P3,"(a) Partial pressure of nitrogen = ")
disp("m^3",V2,"(b) pure-component volume of ethane = ")
disp("kg/m^3",D,"(c) Density at standard conditions = ")
disp("kg/m^3",D1,"(d) Density at given condition = ")
disp(Mavg,"(e) Average molecular weight = ")
disp("%",mper1,"(f) weight percent of Methane = ")
disp("%",mper2,"weight percent of Ethane = ")
disp("%",mper3,"weight percent of Nitrogen = ")