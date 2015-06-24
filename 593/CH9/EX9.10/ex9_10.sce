clear;
//clc();

// Example 9.10
// Page: 239
printf("Example-9.10  Page no.-239\n\n");

//***Data***//

T = 65+273.15;//[K] Temperature
R = 8.314;//[(m^(3)*Pa)/(mol*K)] Universal gas constant 
// From the table 9.C ( page 239 ) given in the book the molar volumes and solubility of n-hexane and diethylketone at 25 deg C are given as 
v_hex = 131.6;//[ml/mol] Molar volume of n-Hexane
v_dketone = 106.4;//[ml/mol] Molar volume of diethylketone
s_hex = 14.9;//[MPa^(0.5)] Solubility of n-Hexane
s_dketone = 18.1;//[MPa^(0.5)] Solubility of diethylketone

// Here we will use these values with the assumption that   Y_i,65C = Y_i,25C
// At infinite dilution, the volume fraction of the other species is 1.00, so, 
// logY_a = v_a*phi_b^(2)*(delta_a - delta_b)^(2)/(R*T)
// so, for n-Hexane
Y_hex = exp(v_hex*1^(2)*(s_hex - s_dketone)^(2)/(R*T));

// And that for diethylketone
Y_dketone = exp(v_dketone*1^(2)*( s_dketone - s_hex )^(2)/(R*T));
printf(" The infinite dilution activity coefficient of n-Hexane is %f\n",Y_hex);
printf(" The infinite dilution activity coefficient of diethlyketone is %f",Y_dketone);
