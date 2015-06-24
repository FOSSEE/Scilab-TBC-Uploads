//clc()
Td = 353.2;//K
Tw = 308;//K
Hvap = 2418.5;//kJ/kg
pr = 0.950;//kJ/kg
Ps = 5.62;//kPa
P = 101.3;//kPa
Yw1 = (Ps * 18)/ (( P - Ps) * 29);
Y1 = Yw1 - pr * ( Td - Tw ) / Hvap;
disp("kg water/kg dry air",Y1,"Humidity = ")
//humidity can also be directly obtained from psychometric chart, which we get to be 0.018 kg water/kg dry air
