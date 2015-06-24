// Scilab Code Ex6.4:  Page-6.11 (2004)
clc;clear;
t = 3.1e-14;  // Mean free time, sec
m = 9.1e-31;    //  Mass of electron, kg
e = 1.6e-19;    //  Charge of electron, C
r = 0.429e-9;   //  Side of the unit cell. m 
n = 2/(r^3);  //  Number of electron per unit cubemetre
rho = m/(n*(e^2)*t);    // Electrical resistivity, ohm m
printf("\nElectrical resistivity of sodium at zero degree Celsius = %2.3e ohm m", rho);

// Result 
//  Electrical resistivity of sodium at zero degree Celsius = 4.527e-08 ohm m 
