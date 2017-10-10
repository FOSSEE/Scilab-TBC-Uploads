clear//

//Variables

p =  20 * 10**-2             //Resistivity (in ohm-meter)
u = 100 * 10**-4             //mobility (in meter-square per volt-second)
q = 1.6 * 10**-19                     //charge on electron (in Coulomb) 

//Calculation

sig = 1/p                    //Conductivity (in per ohm-meter)
n = sig / (q * u)            //number of electron carriers (in per cubic-meter)

//Result

printf("\n Number of electron carriers is  %0.1f  m**-3.",n)
