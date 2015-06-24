clear;
clc;
// Example 9.6
printf('Example 9.6\n\n');
// Page no. 242
// Solution

//(a)
mol_bms =  0.59 ;// Biomass produced per g mol of glucose-[g mol biomass/ g mol glucose]
mw_bms =  23.74 ;// molecular wt. of biomass -[g]
mw_gls =  180.0 ;// molecular wt. of glucose -[g]
ms_bms =  (mol_bms*mw_bms)/mw_gls ;// Biomass produced per gram of glucose-[g biomass/ g glucose]
printf('(a) Biomass produced per gram of glucose is %.4f g biomass/ g glucose.',ms_bms);

//(b)
mol_etol = 1.3 ;//Ethanol produced per g mol of glucose-[g mol ethanol/ g mol glucose]
mw_etol =  46.0 ;// molecular wt. of ethanol -[g]
ms_etol =  (mol_etol*mw_etol)/mw_gls ;// Ethanol produced per gram of glucose-[g ethanol/ g glucose]
printf('\n (b) Ethanol produced per gram of glucose is %.3f g ethanol/ g glucose.',ms_etol);