//clc()
macid = 1000;//kg ( basis - dilute phosphoric acid )
Mphacid = 97.998;
P = 1.25;//% ( dilute % )
mphacid = macid * P /100;
Nphacid = mphacid / Mphacid;
//1mole of phosphoric acid - 1mole of trisodium phosphate
NTSP = Nphacid;
MTSP = 380.166;
mTSP = NTSP * MTSP;
disp("kg",mTSP,"(a)Maximum weight of TSP obtained = ")
NCO2 = NTSP;
Pwater = 6.27//kPa
//since gas is saturated with water vapour, vapour pressure = partial pressure
Nwater = NCO2 * Pwater / ( 100 - Pwater );
Ntotal = Nwater + NCO2;
P = 100;//kPa
T = 310;//K
V = Ntotal * 101.3 * T *22.4143 / ( P * 273.15 );
disp("m^3",V,"(b)Volume of CO2 = ")