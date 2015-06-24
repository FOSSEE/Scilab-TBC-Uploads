// Scilab Code Ex6.3 : Page-6.10 (2004)
clc;clear;
t = 3e-14;  // Mean free time, sec
m = 9.1e-31;    //  Mass of electron, kg
e = 1.6e-19;    // Charge of electron, C
r = 1.85e-10;   //  Radius of sodium atom, m 
a = 4*r/sqrt(3);    //  Sodium has BCC structure
n = 2/(a^3);  //  Number of electron per unit volume
rho = m/(n*(e^2)*t);    // Electrical resistivity, ohm m

printf("\nElectrical resistivity  = %3.3e ohm m", rho);

// Result 
//  Electrical resistivity  = 4.620e-08 ohm m 
