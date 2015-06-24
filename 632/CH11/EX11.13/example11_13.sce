//clc()
T1 = 1500;//K
Tr = 273;//K
T2 = 400;//K
Cpm1 = 50;//kJ/kmol
Cpm2 = 35;//kJ/mol
H = Cpm1 * ( T1 - Tr ) - Cpm2 * ( T2 - Tr );
disp("kJ/kmol",H,"Enthalpy change = ")