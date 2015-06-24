clear;
clc;

//Example - 7.30
//Page number - 267
printf("Example - 7.30 and Page number - 267\n\n");

//Given
den_liq = 13690;//[kg/m^(3)] - Density of liquid mercury
den_solid = 14190;//[kg/m^(3)] - Density of solid mercury
mp = -38.87;//[C] - Melting point of mercury at pressure of 1 bar
mp = mp + 273.15;//[K]
T_req = 0;//[C] - Required temperature to which the melting point is to be raised
T_req = T_req + 273.15;//[K]
H_fus = 11.62;//[kJ/kg] - Latent heat of fusion of mercury

V_liq = (1/den_liq);//[m^(3)/kg] - Specific volume of liquid mercury
V_solid = (1/den_solid);//[m^(3)/kg] - Specific volume of solid mercury

// (delta P/delta T) = ((P - 1)*100)/(T_req - mp)
// delta H/(T*delta V) = (H_liq - H_solid)/(T*(V_liq - V_solid)) = del (say)
del = (H_fus)/(mp*(V_liq - V_solid));//[kPa/K] - delta H/(T*delta V)

//Equating the two sides and then solving we get
P = (del*(T_req - mp))/100 + 1;//[bar]

printf(" The required pressure should be %f bar",P);

