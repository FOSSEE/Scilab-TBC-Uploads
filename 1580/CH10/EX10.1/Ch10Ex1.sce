// Scilab Code Ex10.1: Page-10.3 (2004)
clc;clear;
Tc = 3.7;   // Critical temperature, K
Ho = 0.0306;    //  Critical field at zero kelvin, tesla
T = 2;  // temperature at which filed being calculated, K
Hc = Ho*[1-(T/Tc)^2]; //    Critical Magnetic field, tesla
printf("\nThe Critical field at two kelvin = %f tesla" , Hc);

// Result
// The Critical field at two kelvin = 0.021659 tesla 
