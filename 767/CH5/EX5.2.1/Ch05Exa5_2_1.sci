// Scilab code Exa5.2.1: To calculate the energy and no. of collision required to stop collision : P.no. 223 (2011)
m = 511; // Mass of electron, KeV
M = 938*10^3; // Mass of incident charged particle, KeV
E = 10*10^3; // Energy of proton, KeV
E_l = 4*m*E/M; // Energy lost during collison, KeV
n = E/E_l; // Number of collisions, 
N = round(n)
printf("\n The energy lost during collision  = %5.2f KeV \n Number of collision required   = %d collisions",E_l, N )
// Result
//     The energy lost during collision  = 21.79 KeV 
//  Number of collision required   = 459 collisions  