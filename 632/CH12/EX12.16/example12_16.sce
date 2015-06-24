//clc()
//CO2(g) + C(s) = 2CO(g)                H1298 = 170kJ/mol
//O2(g) + 2C(s) = 2CO(g)                H2298 = -221.2kJ/mol
T2 = 1298;//K
T1 = 298;//K
Hc = 0.02;//kJ/molK
Ho = 0.03;//kJ/molK
Hco = 0.03;//kJ/molK
Hco2 = 0.05;//kJ/molK
//let the flue gas contain x mol CO2 per mole of oxygen, product contains 2(1+x)mol CO. Nitrogen in reactant and product remain the same
//enthalpy of cooling xmol CO2, 1 mol O2 and 2 + xmol carbon from 1298 to 298K is given as, H1 = (Hco2 * x + Ho * 1 + Hc * (2 + x)) * (298 - 1298)
//H1 = (-70x - 70)kJ
//enthalpy of heating the product, H2 = 2 * ( 1 + x )* Hco * (1298 - 298)
//H2 = 60 + 60x kJ
//Hr = 170x - 221.2
//Htotal = 0 = H1 + H2 + Hr
x = (221.2 + 70 - 60)/(170 + 60 - 70);
disp("mol",x,"moles of CO2 present per mol of oxygen in feed stream = ")