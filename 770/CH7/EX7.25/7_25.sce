clear;
clc;

//Example - 7.25
//Page number - 258
printf("Example - 7.25 and Page number - 258\n\n");

// Given
T = 80 + 273.15;//[K]
P = 10;//[MPa] 

// Beta = (1/V)*(del V/del T)_P

// Pressure is kept fixed at 10 MPa and (del V/del T)_P is evaluated. Looking in the compressed liquid water tables,at
// At 80 C and 10 MPa
V_1 = 0.0010245;//[m^(3)/kg]
// At 60 C and 10 MPa
V_2 = 0.0010127;//[m^(3)/kg]
// At 100 C and 10 MPa
V_3 = 0.0010385;//[m^(3)/kg]

Beta = (1/V_1)*((V_3 - V_2)/(100 - 60));//[K^(-1)]

printf("The value of volume expansivity is  Beta = %e K^(-1)\n",Beta);

//Isothermal compressibility is given by
// K_t = -(1/V)*(del V/del P)_T

// Temperature is kept fixed at 80 C and different pressures are taken to calculate (del V/del P)_T
// At 80 C and 5 MPa
V_4 = 0.0010268;//[m^(3)/kg]
// At 80 C and 10 MPa
V_5 = 0.0010245;//[m^(3)/kg]
// At 80 C and 15 MPa
V_6 = 0.0010222;//[m^(3)/kg]

// K_t = -(1/V)*(del V/del T)_P
K_t = -(1/V_1)*((V_4 - V_6)/(5 - 15));//[MPa^(-1)]
K_t = K_t*10^(-6);//[Pa^(-1)]

printf("The value of isothermal compressibility is  K_t = %e Pa^(-1)\n",K_t);

// Cp - Cv = (T*V*(Beta^(2)))/K_t
R = (T*V_1*(Beta^(2)))/K_t;//[J/kg-K]
R = R*10^(-3);//[kJ/kg-K]

printf("The value of the difference between Cp and Cv is  Cp-Cv = %f kJ/kg-K",R);

