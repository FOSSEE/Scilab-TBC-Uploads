clear;
//clc();

// Example 6.8
// Page: 119
printf("Example-6.8  Page no.-119\n\n");

//***Data***//
x_sulph = 0.6;
x_water = 0.4;
M_i = 18;//[lbm/lbmol]
Temp = 200;//[F]
// From Equation 6.11 as given in the book, we have 
// dQ/dm_in = h_i-h_in
// where h_i is partial molal enthalpy which is taken from the example 6.7 and h_in is the pure species molar enthalpy which is read from the figure 6.8.
// So at 200F we have 
h_i = 25;//[Btu/lbm]
h_in = 168;//[Btu/lbm]
// hence
dQ_by_dm_in = h_i-h_in;;//[Btu/lbm]
// Now 
dQ_by_dn_in = M_i*dQ_by_dm_in;//[Btu/lbmol]
printf("The amount of heat removed to keep the temperature constant is %f Btu/lbm of water added",dQ_by_dm_in);
// The negative sign shows that this mixing is exothermic; we must remove 143 Btu/lbm of water added.