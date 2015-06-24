//clc()
V = 100;//m^3
Ptotal = 100;//kPa
Pwater = 4;//kPa
Pair = Ptotal - Pwater;
T = 300;//K
T1 = 275;//K
Vstp = 22.4143;//m^3/kmol
Tstp = 273.15;//K
Pstp = 101.325;//kPa
Pwater1 = 1.8;//kPa
Pair1 = Ptotal - Pwater1;
V1 = V * Pair * T1 / ( T * Pair1);
Nwater = V * Pwater * Tstp/ (Vstp * Pstp * T);
Nwater1 = V1 * Pwater1 * Tstp/ (Vstp * Pstp * T1);
m = (Nwater - Nwater1) * 18.02;
disp("m^3",V1,"(a) volume of air after dehumidification = ")
disp("kg",m,"(b) Mass of water vapour removed = ")