// Scilab code Exa12.1 : : Page-573 (2011)
clc; clear; 
N_0 = 6.23e+23;    // Avogadro's number, per mole
m = 0.1;        // Mass of copper foil, Kg
phi = 10^12;        // Neutron flux density, per square centimetre sec
a_63 = 0.691;        // Abundance of Cu-63
a_65 = 0.309;        // Abundance of Cu-65
W_m = 63.57;        // Molecular weight, gram
sigma_63 =  4.5e-24;    // Activation cross section for Cu-63, square centi metre
sigma_65 = 2.3e-24;        // Activation cross section for Cu-65, square centi metre
A_63 = phi*sigma_63*m*a_63/W_m*N_0;        // Activity for Cu-63, disintegrations per sec
A_65 = phi*sigma_65*m*a_65/W_m*N_0;        // Activity for Cu-65, disintegrations per sec
printf("\nThe activity for Cu-63 is = %4.3e disintegrations per sec \nThe activity for Cu-65 is = %4.2e disintegrations per sec", A_63, A_65);

// Result
// The activity for Cu-63 is = 3.047e+009 disintegrations per sec 
// The activity for Cu-65 is = 6.97e+008 disintegrations per sec 