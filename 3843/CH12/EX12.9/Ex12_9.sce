// Example 12_9
clc;funcprot(0);
// Given data
T=77;// °F
Q=-874000;// Btu/lbmol
// The chemical reaction is C_3H_8+5O_2--->3CO_2+4H_2O
N_CO2=3;// mol
N_H2O=4;// mol
N_p=1;// mol (C_3H_8-Propane)
N_O2=5;// mol
hbar0_fCO2=-169300;// Btu/lbmol
hbar0_fH2O=-104040;// Btu/lbmol
Rbar=1.987;// Btu/lbmol-°R

// Calculation
N_P=N_CO2+N_H2O;// mol
N_R=N_p+N_O2;// mol
hbar0_fC3H8=(N_CO2*hbar0_fCO2)+(N_H2O*hbar0_fH2O)+((N_R-N_P)*Rbar*(T+460))-Q;// Btu/lbmol
printf("\nThe enthalpy of formation,(hbar°_f)C3H8=%5.0f Btu/lbmol",hbar0_fC3H8);
