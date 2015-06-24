//clc()
F = 1000;//kg/h
H1 = 116.3;//kJ/kg ( enthalpy of feed solution - 10% NaOH, 305 K )
H2 = 560.57;//kJ/kg ( enthalpy of thick liquor - 50% NaOH, 380 K )
Hsteam = 2676;//kJ/kg ( 1atm , 373.15K )
//by doing material balances,
P = 200;//kg/h
mvap = 800;//kg/h
//Enthalpy balance gives, F*H1 + Q = mvap*Hsteam + P*H2
Q = (mvap*Hsteam + P*H2)-F*H1;
disp("kJ/h",Q,"Heat to be supplied = ")