clear//

//Variables

p = 0.47                         //Resistivity (in ohm-meter)
q = 1.6 * 10**-19                //charge on electron (in Coulomb)
un = 0.39                        //mobility of electron in germanium (in m**2 per volt-second)
up = 0.19                        //mobility of hole in germanium (in m**2 per volt-second)

//Calculation

sig = 1/p                        //Conductivity (in siemen per meter)
ni = sig / (q *(un +up))         //intrinsic concentration (in per cubic-meter)

//Result

printf("\n Intrinsic concentration is  %0.3f  m**-3.",ni)
