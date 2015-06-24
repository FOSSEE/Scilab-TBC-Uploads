clear;
//clc();

// Example 14.2
// Page: 380
printf("Example-14.2  Page no.-380\n\n");

//***Data***//
T = 288;//[K] Atmospheric temperature 
R = 8.314;//[J/(mol*K)] universal gas constant
z_2 = 15000;//[m] Thickness of the atmosphere
z_1 = 0;//[m] Surface
// At the surface, the mole fraction of nitrogen and oxygen are 
y_N2_1 = 0.79;
y_O2_1 = 0.21;
M_N2 = 28/1000;//[kg/mol]
M_O2 = 32/1000;//[kg/mol]

// For an ideal solution of ideal gases with only two species, we have 
// y_i_2/y_i_1 = 1/(y_i_1 + y_j_1/a) , and
// a = exp(-(M_i-M_j)*g*(z_2-z_1)/(R*T))
// where 'g' is accelaration due to gravity and its value is
g = 9.81;//[m/s^(2)]

// So
a = exp(-(M_N2-M_O2)*g*(z_2-z_1)/(R*T));
// and
yi2_by_yi1 = 1/(y_N2_1 + y_O2_1/a);

printf(" Concentration of the nitrogen at the top of atmosphere with respect to the concentration of nitrogen at the surface of the earth is \n        yi2_by_yi1 = %0.2f",yi2_by_yi1);