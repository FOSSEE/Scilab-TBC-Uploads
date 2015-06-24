clear;
//clc();

// Example 11.1
// Page: 272
printf("Example-11.1  Page no.-272\n\n");

//***Data***//
V_water = 1;//[L] volume of the water
Temp = 25;//[C]
d_benzene = 0.88;//[g/ml] density of the benzene 
M_benzene = 78;//[g/mol] molecular weight of the benzene
M_water = 18;//[g/mol]
// Typically a buret will deliver about 20 drops of lliquid per millimeter, so moles of benzene in one drop is
n_1drop = 1/20*(d_benzene/M_benzene);//[mol/drop] 
// No of moles in 1 litre of the water is 
n_water = 1000/M_water;//[mol]
// Because 1 litre = 1000 g
// Now from the table 11.1 (page 273), at the saturated condition at the temperature 25C, solubility of benzene in the water is
s_benzene = 0.000405;
n_benzene_saturate = s_benzene*n_water;//[mol]
// Thus no of the drops of the benzene is
N_benzene = n_benzene_saturate/n_1drop;//[drops]
printf("The total number of the drops of the benznene required to saturate the water is %0.0f drops",N_benzene);