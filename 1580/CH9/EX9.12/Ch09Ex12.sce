// Scilab Code Ex9.12: Page-9.32 ; (2004)
clc;clear;
e = 1.6e-19;    //  Electronic charge, C
mu_e = 0.36;    //  Mobility of electron; m^2V^-1s^-1
mu_h = 0.17;    //  Mobility of holes, m^2V^-1s^-1
rho = 2.12;     // Resistivity of sample, ohm metre 
sigma = 1/rho;  // Conductivity of sample, mho per meter
m   = 9.1e-31;  //  Mass of electron, kg
h = 6.63e-34;   // Plancks Constant, Js
T = 300;    // Temperature, Kelvin 
k = 1.38e-23;    // Boltzman constant,joule per kelvin
// But  ni = C*exp((-Eg)/(2*k*T));    // Carrier concentration at room temperature, therefore
C = 2*(2*%pi*T*m*k/h^2)^(3/2); // Constant parameter
ni = sigma/(e*(mu_e+mu_h));  // Carrier concentration, per metercube
b = C/ni;   // Ratio for simplicity
Eg = 2/e*k*T*log(b); // Band gap energy, joules

printf("\nBand gap energy = %5.4f eV", Eg);

//Result
//  Band gap energy= 0.7927 eV 
