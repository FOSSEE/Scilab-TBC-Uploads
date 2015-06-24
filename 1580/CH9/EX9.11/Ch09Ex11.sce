// Scilab Code Ex9.11: Page-9.32 ; (2004)
clc;clear;
e = 1.6e-19;    //  Electronic charge, C
Eg = 0.7*e;  // Band gap energy, joules
mu_e = 0.4;    //  Mobility of electron; m^2V^-1s^-1
mu_h = 0.2;    //  Mobility of holes, m^2V^-1s^-1
m   = 9.1e-31;  //  Mass of electron, kg
h = 6.63e-34;   // Plancks Constant, Js
T = 300;    // Temperature, Kelvin 
k = 1.38e-23;    // Boltzman constant,joule per kelvin
C = 2*(2*%pi*T*m*k/h^2)^(3/2); // Constant parameter
ni = C*exp((-Eg)/(2*k*T));    // Carrier concentration at room temperature
sigma = ni*e*(mu_e+mu_h);  // Conductivity, mho per meter
printf("\nCarrier concentration at room temperature = %4.2e per metrecube", ni);
printf("\nConductivity of silicon = %3.2f mho per meter", sigma);


//Results
//  Carrier concentration at room temperature = 3.34e+19 per metrecube
//  Conductivity of silicon = 3.20 mho per meter 
