clear;
//clc();

// Example 11.13
// Page: 299
printf("Example-11.13  Page no.-299\n\n");

//***Data***//

T = 273.15+20;//[K]

// The equation 11.15 (page 297) is given by 
// log(1/(x_i_1*y_i_1)) = log(p_i_solid_phase/p_i_subcooled_liquid) = delta_h_solid_to_liquid/(R*T_melting_point)*(T_melting_point/T-1)

// Ignoring the moment the wild extraplation involved, we simply insert the appropriate values
T_m = 273.15+800;//[K]
delta_h_fusion = 30219;//[J/g]
R = 8.314;//[J/(mol*K)]

// Let log(1/(x_i_1*y_i_1)) = a
a = delta_h_fusion/(R*T)*(T_m/T-1);

// Now 
x_NaCl_into_y_i_1 = 1/exp(a);

// If we make the plausible assumption that y_i_1 = 1.00, then
x_NaCl = 1/exp(a)*1;
printf(" The solubility of the NaCl in water at 20 deg C is %e \n", x_NaCl);
printf(" But the experimental value is 0.1, so, Similar to the results in book, our results are very far wrong");
