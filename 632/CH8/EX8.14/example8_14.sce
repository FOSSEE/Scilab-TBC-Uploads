//clc()
P = 101.3;//kPa
MW = 58;
T1 = 280.8;//K
Ps = 5;//kPa
pr = 2;//kJ/kgK ( Psychometric ratio )
Hvap = 360;//kJ/kg
Tw = T1;
Yw1 = Ps * MW / (( P - Ps) * 29);
// Tw = Tg - Hvap * ( Yw1 - Y1) / (hG / kY), where hG/kY is the psychmetric ratio pr
Y1 = 0;
Tg = Tw + Hvap * ( Yw1 - Y1) / pr;
disp("K",Tg,"The air temperature = ")