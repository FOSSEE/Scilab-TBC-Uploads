//clc()
P1 = 75;//kPa
T1 = 573;//K
Tvap = 365;//K
Tbasis = 273;//K
//Since, the boiling point of water at 75kPa is 375K, the vapour at 573K is superheated;
H1 = 3075;//kJ/kg
Cliq = 4.2;//kJ/kgK
Cvap = 1.97;//kJ/kg/K
m = 1;//kg
//let assume converting liq. water into superheated stream occurs in 3 steps,
//step1 - water is heated from 273K to 365 K at constant pressure,enthalpy change is the heat required to change the temperature,
Hc1 = m*Cliq * ( Tvap - Tbasis );
//step2 - the liq is vapurized at constant pressure and constant temperature, enthalpy change is equal to the heat of vapourisation, say Hc2
//step3 - the saturated vapour at 365K is heated to 573K at constant pressure, the enthalpy change is the heat required to raise the temperature
Hc3 = m*Cvap*(T1 - Tvap);
//total enthalpy = 3075 = Hc1 + Hc2 + Hc3, therefore
Hc2 = H1 - Hc1 - Hc3;
disp("kJ/kg",Hc2,"Heat of vapourisation = ")