clear;
//clc();

// Example 14.3
// Page: 381
printf("Example-14.3  Page no.-381\n\n");

//***Data***//
// For this problem all the data are same as in previous Example 14.2 except z_1 and z_2 
// So
T = 288;//[K] Atmospheric temperature 
R = 8.314;//[J/(mol*K)] Universal gas constant
z_2 = 10;//[m] Height of the reactor
z_1 = 0;//[m] Surface
g = 9.81;//[m/s^(2)] Accelaration due to gravity
// At z = z_1, the mole fraction of nitrogen and oxygen are 
y_N2_1 = 0.79;
y_O2_1 = 0.21;
M_N2 = 28/1000;//[kg/mol]
M_O2 = 32/1000;//[kg/mol]

// So
a = exp(-(M_N2-M_O2)*g*(z_2-z_1)/(R*T));
// and
yi2_by_yi1 = 1/(y_N2_1 + y_O2_1/a);

printf(" Concentration of the nitrogen at the top of reactor with respect to the concentration of nitrogen at the bottom of reactor is \n        yi2_by_yi1 = %f",yi2_by_yi1);