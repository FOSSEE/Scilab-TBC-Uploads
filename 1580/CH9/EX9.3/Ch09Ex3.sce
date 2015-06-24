// Scilab Code Ex9.3: Number of intrinsic carriers at 300K: Page-9.26 ; (2004)
clc;clear;
e = 1.6e-19;    //  Electronic charge, C
m   = 9.1e-31;  //  Mass of electron, kg
T = 300;    // Room temperature, K
k = 1.38e-23;   //  Boltzmann Constant, joule per kelvin 
Eg = 0.7*e;   // Energy band gap of silicon, J
h = 6.626e-34;   // Plancks Constant, Js
C = 2*(2*%pi*m*k/h^2)^(3/2);    // A constant 
ni = C*T^(3/2)*exp((-Eg)/(2*k*T));    // formula for carrier concentration at room temperature
printf("\nNumber of intrinsic carriers at 300K = %3.1e per cubemetre ", ni);

//Results
//  Number of intrinsic carriers at 300K = 3.3e+19 per cubemetre 
