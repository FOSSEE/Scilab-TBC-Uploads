// Scilab code Exa4.7.1: To calculate the energy  and power released during fission of U-235 : Page 189 (2011)
m = 0.001; // Mass of U-235 lost during fission, Kg
c = 3e+08; // Velocity of light, m/s
E = m*c^2; // Energy released during fission, J
E_t = E/(4e+09*1000); // Energy requires TNT, Kt 
printf("\n Energy released during fission    = %1.0e J  \n Destructive power of bomb    =  %4.1f Kt of TNT", E, E_t)
// Result  
  //     Energy released during fission    = 9e+013 J  
//  Destructive power of bomb    =  22.5 Kt of TNT     
