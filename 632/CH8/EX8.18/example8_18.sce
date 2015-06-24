//clc()
P = 101.3;//kPa
Td = 303;//K
Tw = 288;//K
//using psychometric chart,
Y1 = 0.0045;//kg water/ kg dry air
PY = 18;//%
Theated = 356.7;//K
Cb = 1.005;
Ca = 1.884;
Cs = Cb + Y1 * Ca;
Q = 1 * Cs * (Theated - Td);
disp("kg water/ kg dry air",Y1,"(a)Humidity of the initial air = ")
disp("%",PY,"(b)Percent humidity = ")
disp("K",Theated,"(c)Temperature to which the air is heated = ")
disp("kJ",Q,"(d)Heat to be suppplied = ")