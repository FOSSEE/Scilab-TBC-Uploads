clear//

//Variables

ND = 10**21                 //Donor concentration (in per cubic-meter)
NA = 5 * 10**20             //Acceptor concentration (in per cubic-meter)
un = 0.18                   //mobility of electron in silicon (in m**2 per volt-second)
q = 1.6 * 10**-19           //charge on electron (in Coulomb)


//Calculation

n = ND -NA                  //net donor density (in per cubic-meter)
sig = n * q * un            //Conductivity (in Siemen per meter)

//Result

printf("\n Conductivity of silicon is  %0.3f  (ohm-meter)**-1." ,sig)
