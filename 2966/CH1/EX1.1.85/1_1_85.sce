//water//
//page 1.85 example 1//
clc
volume_hardwater=1//in litres//
CaCl2=4.5//Hardness of water(gms/lit)//
moles_NaCl=2;//Na3Ze giving NaCl and CaZe//
mol_wt_NaCl=58.5;
mol_wt_Na3Ze=111;
NaCl=CaCl2*moles_NaCl*mol_wt_NaCl/mol_wt_Na3Ze;
printf("\Quantity of NaCl produced is %.2f gm",NaCl);