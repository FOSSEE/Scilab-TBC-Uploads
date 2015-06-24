// Scilab Code Ex9.6: Page-9.27 ; (2004)
clc;clear;
mu_e = 0.48;    //  Mobility of electron; m^2V^-1s^-1
e = 1.6e-19;    //  Electronic charge, C
m   = 9.1e-31;  //  Mass of electron, kg
mu_h = 0.013;    //  Mobility of holes, m^2V^-1s^-1
T = 300;    // Room temperature, K
k = 1.38e-23;   //  Boltzmann Constant, joule per kelvin 
Eg = 1.1*e;   // Energy band gap of silicon, J
h = 6.626e-34;   // Plancks Constant, Js
C = 2*(2*%pi*m*k/h^2)^(3/2);    // A constant 
ni = C*T^(3/2)*exp((-Eg)/(2*k*T));    // formula for carrier concentration at room temperature
sigma = ni*e*(mu_e+mu_h);  // Conductivity, mho per metre

printf("\nConductivity = %3.1e mho per metre ", sigma);

//Results
//  Conductivity = 1.2e-03 mho per metre  
