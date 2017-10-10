clear//

//Variables

p = 9 * 10**-3           //Resistivity (in ohm-meter)
up = 0.03                //Mobility (in meter-square per volt-second)

//Calculation

sig = 1/p                //Conductivity (in per ohm-meter)
RH = up / sig            //Hall coefficient (in cubic-meter per Coulomb)          

//Result

printf("\n Value of Hall-coefficient is  %0.3f  m**3/C.",RH)
