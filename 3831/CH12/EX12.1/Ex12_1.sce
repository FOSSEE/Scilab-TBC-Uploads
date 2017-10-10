// Example 12_1
clc;funcprot(0);
// Given data
w_propane=0.500;// The mass fraction
w_air=0.500;// The mass fraction
R=8.3143;// kJ/kgmole.K

// Calculation
// (a)
// The molecular masses of the components are found in Table C.13 in Thermodynamic Tables to accompany Modern Engineering Thermodynamics as
M_propane=44.09;// kg/kgmole
M_air=28.97;// kg/kgmole
M_m=1/((w_propane/M_propane)+(w_air/M_air));// kg/kgmole
// (b)
X_propane=w_propane*(M_m/M_propane);// The molar value for propane
X_air=w_air*(M_m/M_air);// The molar value for air
w_m=w_propane+w_air;// The mass of the mixture
X_m=X_propane+X_air;// The molar value of the mixture
// (c)
R_m=R/M_m;// The equivalent gas constant in kJ/kg.K
printf("\n(a)The equivalent molecular mass of the mixture,M_m=%2.1f kg/kgmole \n(b)The mixture composition on a molar basis,X_propane=%0.3f & X_air=%0.3f \n(c)The equivalent gas constant of the mixture,R_m=%0.3f kJ/kg.K",M_m,X_propane,X_air,R_m);
