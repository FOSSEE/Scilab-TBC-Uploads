// Example 12_3
clc;funcprot(0);
// Given data
X_CO_2=9.51;// %
X_H_2O=19.01;// %
X_N_2=71.48;// %
M_N_2=28.02;// kg/kgmole
M_CO_2=44.01;// kg/kgmole
M_H_2O=18.02;// kg/kgmole
p_m=14.7;// psia

// Calculation
// (a)
// For ideal gas behavior, Eq. (12.23) tells us that the mole fractions, volume fractions, and the pressure fractions are all the same, or
Shi_CO_2=X_CO_2;// The volume fraction in %
Shi_H_2O=X_H_2O;// The volume fraction in %
Shi_N_2=X_N_2;// The volume fraction in %
pi_CO_2=X_CO_2;// The pressure fraction in %
pi_H_2O=X_H_2O;// The pressure fraction in %
pi_N_2=X_N_2;// The pressure fraction in %
M_m=(X_CO_2*M_CO_2)+(X_N_2*M_N_2)+(X_H_2O*M_H_2O);// The equivalent molecular mass of this ideal gas mixture in kg/kgmole
w_CO_2=Shi_CO_2*(M_CO_2/M_m);// The mass fraction in %
w_H_2O=Shi_H_2O*(M_H_2O/M_m);// The mass fraction in %
w_N_2=Shi_N_2*(M_N_2/M_m);// The mass fraction in %
// (b)
p_H_2O=p_m*X_H_2O/100;// The partial pressure of the water vapor in the exhaust gas mixture in psia
printf("\n(a)The volume fraction compostion of the mixture,Shi_CO_2=%1.2f percentage \n                                                 Shi_H_2O=%2.2f percentage \n                                                 Shi_N_2=%2.2f percentage \n(b)The partial pressure of the water vapor in the exhaust gas mixture,p_H2O=%1.2f psia",Shi_CO_2,Shi_H_2O,Shi_N_2,p_H_2O);
