clear;
//clc();

// Example 6.2
// Page: 109
printf("Example-6.2  Page no.-109\n\n");

//***Data***//
n_eth = 1;//[mol]
W_water = 1;//[kg]
Temp = 20;//[C]
// For pure ethanol at 20C
v_ethanol = 58.4;//[cm^(3)/mol]
v_ethanol = v_ethanol/1000;//[L/mol]
v_water = 1.0019;//[L/1000g]
// Molality of ethanol in water is
m = n_eth/W_water;//[molal]
// We have the equation used in the previous example as
V_final_mix = 1.0019+0.054668*m-0.000418*m^(2);
// Where 'V' is( solution volume, liters per 1000g of water ) and 'm' is the molality of ethanol in water
// V is the final volume of the solution 
// The volume expansion on moxing is 
V_exp = V_final_mix-v_ethanol-v_water;//[L]
V_exp = V_exp*1000;//[cm^(3)]
printf("Volume change on mixing etanol and water is %0.3f cubic cm",V_exp);
// We see that there is a net contraction on mixing of the volume of the ethanol added.

