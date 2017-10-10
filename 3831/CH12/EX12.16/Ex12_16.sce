// Example 12_16
clc;funcprot(0);
// Given data
X_N_2=0.7809;// The mole fraction for nitrogen
X_O_2=0.2095;// The mole fraction for oxygen
X_Ar=0.00930;// The mole fraction for Argon
X_CO_2=0.0003;// The mole fraction for Carbondioxide

// Calculation
// Using Eqs. (12.39) and (12.40), the composition data given in Example 12.2 and the critical point data given in Table C.12b in Thermodynamic Tables to accompany Modern Engineering Thermodynamics give
p_c_N_2=3.39;// MPa
p_c_O_2=5.08;// MPa
p_c_Ar=4.86;// MPa
p_c_CO_2=7.39;// MPa
p_c_air=(X_N_2*p_c_N_2)+(X_O_2*p_c_O_2)+(X_CO_2*p_c_CO_2);// MPa
T_c_N_2=126.2;// K
T_c_O_2=154.8;// K
T_c_Ar=151;// K
T_c_CO_2=304.2;// K
T_c_air=(X_N_2*T_c_N_2)+(X_O_2*T_c_O_2)+(X_CO_2*T_c_CO_2);// K
printf("\nThe critical pressure for air,(p_c)_air=%1.2f MPa \nThe critical temperature for air,(T_c)_air=%3.0f K",p_c_air,T_c_air);
// The answer vary due to round off error
