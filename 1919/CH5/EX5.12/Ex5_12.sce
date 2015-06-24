
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 12

clear ;clc;

//Given data
h_sf = 333.43    // the latent heat of fusion at 0 *C in kJ/kg
h_fg = 2257      // the latent heat of fusion at 100 *C in kJ/kg
T1 = 273.15      // temperature (K) of 1kg ice to be converted into liquid 
T2 = 373.15      // temperature (K) of 1kg liquid water to vaporize 


// Calculations
// As we know the entropy change does not depend upon the path followed
del_s_0 = h_sf/T1       // entrophy change for converting ice to water
del_s_100 = h_fg/T2     // entrophy change for converting water to vaper

// Output Results
mprintf('(a) The entrophy change for converting 1kg ice at 0 degree C to liquid water at 0 degree C = %5.4f kJ/kg K' ,del_s_0)
mprintf('\n (b) The entrophy change for converting 1kg liquid water at 1000 degree C to vaporize completely = %5.4f kJ/kg K' ,del_s_100)

