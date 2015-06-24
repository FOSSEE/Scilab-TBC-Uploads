// Scilab Code Ex9.9: Page-9.29 ; (2004)
clc;clear;
ni = 1.5e+16;  // Intrinsic Carrier concentration at room temperature
mu_e = 0.13;    //  Mobility of electron; m^2V^-1s^-1
e = 1.6e-19;    //  Electronic charge, C
Nd = 4.99e+20;  // Impurity atoms , per metrecube
mu_h = 0.05;    //  Mobility of holes, m^2V^-1s^-1
sigma = ni*e*(mu_e+mu_h);  // Conductivity, mho per meter
sigma_d = Nd*e*mu_e;  // Conductivity with donor type impurities, mho per meter
sigma_a = Nd*e*mu_h;  // Conductivity with acceptor type impurities, mho per meter
printf("\nConductivity of silicon = %3.2e mho per meter", sigma);
printf("\nConductivity with donor type impurities = %4.2f mho per meter", sigma_d);
printf("\nConductivity with acceptor type impurities= %4.2f mho per meter", sigma_a);

//Results
// Conductivity of silicon = 4.32e-04 mho per meter
// Conductivity with donor type impurities = 10.38 mho per meter
// Conductivity with acceptor type impurities= 3.99 mho per meter 
