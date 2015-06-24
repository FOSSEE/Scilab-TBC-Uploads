//clc()
F = 1000;//kg
Psolute1 = 20;//%
Psolute2 = 80;//%
//taking solute balance
L3 = F * Psolute1 / Psolute2;
//taking total material balance
V = (F -L3) / 3;
//for first effect, total balance gives,
L1 = F - V;
//solute balance gives,
Psolute3 = F * Psolute1 / L1;
//For second effect, total balance gives,
L2 = L1 - V;
//solute balnce gives,
Psolute4 = L1 * Psolute3 / L2;
disp("%",Psolute3,"solute entering second effect = ")
disp("kg",L1,"Weight entering second effect")
disp("%",Psolute4,"solute entering third effect = ")
disp("kg",L2,"Weight entering third effect")