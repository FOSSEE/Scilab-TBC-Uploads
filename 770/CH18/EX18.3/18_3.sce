clear;
clc;

//Example - 18.3
//Page number - 651
printf("Example - 18.3 and Page number - 651\n\n");

// Given
T_1 = 298.15;//[K] - Standard reaction temperature

// The reaction with theoritical air is
// CH4 + 2(O2 + 3.76N2) - CO2 + 2H20 + 7.52N2

//(1)
n_product = (1 + 2 + 7.52);// Total number of moles of product
// The mole fraction of water vapour is
y_H2O = 2/(n_product);
printf(" (1).The mole fraction of water vapour is %f\n\n",y_H2O);

//(2)
delta_H_rkn_298 = -730*10^(3);//[J/mol]
C = 40;//[J/mol-K] - Average molar heat capacity

// From energy balance we have
// delta_H_rkn_298 + n_product*C(T_2 - T_1) = 0
T_2 = - delta_H_rkn_298/(n_product*C) + T_1;//[K]
T_max = T_2 - T_1;

printf(" (2).The maximum temperature rise of the exhaust gases is %f K\n",T_max);

