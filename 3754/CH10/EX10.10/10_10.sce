clear//

//Variables

ND = 2 * 10**14                     //Donor atom concentration (in atoms per cubic-centimeter)
NA = 3 * 10**14                     //Acceptor atom concentration (in atoms per cubic-centimeter)
ni = 2.3 * 10**19                   //intrinsic concentration (in atoms per cubic-centimeter)

//Calculation

n = ni**2 / NA                      //concentration of electrons (in electrons per cubic-centimeter)
p = ni**2 / ND                      //concentration of holes (in holes per cubic-centimeter)
 
//Result

printf("\n Electron concentration is  %0.3f  electrons/cm**3.\nHole concentration is  %0.3f  holes/cm**3.",n,p)
