// Scilab Code Ex9.10: Page-9.31 ; (2004)
clc;clear;
ni = 1.5e+16;  // Intrinsic Carrier concentration at room temperature
mu_e = 0.135;    //  Mobility of electron; m^2V^-1s^-1
e = 1.6e-19;    //  Electronic charge, C
Nd = 1e+23;  // Impurity atoms , per metrecube
T = 300;    // Temperature, Kelvin 
k = 1.38e-23;    // Boltzman constant,joule per kelvin
mu_h = 0.048;    //  Mobility of holes, m^2V^-1s^-1
sigma = ni*e*(mu_e+mu_h);  // Conductivity, mho per meter
p = ni^2/Nd;    // Hole concentration, per metrecube
sigma_ex = Nd*e*mu_e;  // Conductivity with donor type impurities, mho per meter
E_F =(3/(4*e))*k*T*(log(0.135/0.048)); // Position of fermi level above the intrinsic level, eV 
// mu is inversely propotional to mass 
printf("\nConductivity of silicon = %3.2e mho per meter", sigma);
printf("\nHole concentration = %4.2e per metrecube", p);
printf("\nConductivity with donor type impurities = %4.2e mho per meter", sigma_ex);
printf("\nPosition of fermi level above the intrinsic level = %4.2f eV", E_F);

//Results
//  Conductivity of silicon = 4.39e-04 mho per meter
//  Hole concentration = 2.25e+09 per metrecube
//  Conductivity with donor type impurities = 2.16e+03 mho per meter
//    Position of fermi level above the intrinsic level = 0.02 eV 
