//clc()
Tw = 313;//K
Td = 333;//K
//Using th psychometric chart,
Y = 0.04;//kg water/ kg dry air
PS = 26.5;//%
VS = 1.18;//m^3/kg dry air ( volume of saturated air )
VD = 0.94;//m^3/kg dry air ( volume of dry air )
VH = VD + PS * (VS - VD )/100;
HS = 470;//J / kg dry air ( enthalpy of saturated air )
HD = 60;//J / kg dry air ( enthalpy of dry air )
H = HD + PS * ( HS - HD )/100;
disp("kg water/ kg dry air",Y,"(a)Absolute Humidity of the air = ")
disp("%",PS,"(b)Percent humidity = ")
disp("m^3/kg dry air",VH,"(c)Humid volume = ")
disp("kJ/kg dry air",H,"(d)Enthalpy of wet air = ")