clear//

//Variables

ND = 5 * 10**8                      //Donor atom concentration (in atoms per cubic-centimeter)
NA = 6 * 10**16                     //Acceptor atom concentration (in atoms per cubic-centimeter)
ni = 1.5 * 10**10                   //intrinsic concentration (in atoms per cubic-centimeter)

//Calculation

n = ni**2/NA                        //number of electrons (in per cubic-centimeter)
p = ni**2/ND                        //number of holes (in per cubic-centimeter)

//Result

printf("\n Density of electrons is  %0.3f  cm**-3.\nDensity of holes is  %0.3f  cm**-3.",n,p)
