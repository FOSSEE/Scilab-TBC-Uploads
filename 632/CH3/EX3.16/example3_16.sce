//clc()
Y = 0.015;//kg water vapour/kg dry air
Mair = 29;//kg/kmol
Mwater = 18.016;//kg/kmol
Nwater = Y / Mwater;//kmol
Nair = 1 / Mair;//kmol
Mpr = Nwater *100 / (Nwater + Nair);
Mr = Nwater / Nair;
disp(Mpr,"(a)mole percent of water vapour = ")
disp("kmol water/kmol dry air",Mr,"(b) molal absolute humidity =")