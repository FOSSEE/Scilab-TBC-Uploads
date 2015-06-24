//clc()
m = 1000;//kg/h (dried product)
// S be the amount of dry solid in the product stream 
Pmoisture1 = 4;//%
Pmoisture2 = 0.2;//%
S = m *(1 - P/1000);
X1 = Pmoisture1/(100 - Pmoisture1);
X2 = Pmoisture2/(100 - Pmoisture2);
//let G be the weight of dry air in the air stream 
Y1 = 0.01;//kg water/kg dry solid
Cp = 1.507;
Cw = 4.2;
T1 = 298;//K
T = 273;//K
T2 = 333;//K
Tg1 = 363;//K
Tg2 = 305;//K
Hs1 = (Cp + X1 * Cw) * (T1 - T);
Hs2 = (Cp + X2 * Cw) * (T2 - T);
//Hg = Cs(Tg - To) + Y*L
//Cs = 1.005 + 1.884*Y
L = 2502.3;//kJ/kg dry air
Hg1 = (1.005 + 1.884 * Y1)*(Tg1 - T) + Y1 * L;
Q = -40000;//kJ/h
//Calculating for T2, Hg2 = 32.16 + 2562.59*Y 
//change in enthalpy = Q
//H1 = S * Hs1 + G * HG1 = 37814.22 + 117.17G
//H2 = 100728.14 + G* (32.16 + 2561.59*Y)
//change in enthalpy = Q
//62913.92 + G *(-85.01 + 2561.59*Y) + 40000 = 0
//102913.92 + G *(-85.01 + 2561.59*Y) = 0            (1)
//moisture balance, S*X1 + G*Y1 = S*X2 + G*Y2
//G*(Y-0.01) = 39.62                                 (2)
//solving simultaneously ( 1 ) and ( 2 ), 
Gdry = 3443;//kg/h
G = Gdry*(1 + Y1);
disp("kg/h",G,"Air requirement = ")
