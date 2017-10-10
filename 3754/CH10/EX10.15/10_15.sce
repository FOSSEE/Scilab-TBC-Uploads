clear//

//Variables

un = 1350                             //mobility of electrons (in centimeter-square per volt-second)
up = 480                              //mobility of holes (in centimeter-square per volt-second)
ni = 1.52 * 10**10                    //intrinsic concentration (in per cubic-centimeter)
Nsi = 4.96 * 10**22                   //concentration of silicon (in per cubic-centimeter)
q = 1.6 * 10**-19                     //charge on electron (in Coulomb) 

//Calculation

sigi = q * ni * (un + up)             //conductivity of intrinsic silicon (in per ohm-centimeter)
ND = Nsi/(50 * 10**6)                 //Number of donor atoms (per cubic-centimeter)
n = ND                                //NUmber of free electrons (in per cubic-centimeter)
p = ni**2/n                           //number of holes (in per cubic-centimeter)
sig = q * n * un                      //conductivity of doped silicon (in per ohm-centimeter)
p = 1/sig                             //resistivity (in ohm-centimeter)

//Result

printf("\n Resistivity of doped silicon is  %0.2f  ohm-cm.",p)
