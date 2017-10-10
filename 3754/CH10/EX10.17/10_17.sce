clear//

//Variables

un = 3600.0 * 10**-4             //mobility of electrons (in meter-square per volt-second)
up = 1700.0 * 10**-4             //mobility of holes (in meter-square per volt-second)
k = 1.38 * 10**23                //Boltzmann constant
T = 300.0                        //Temperature (in kelvin)

//Calculation

VT = T/11600                     //Voltage (in volts)
Dp = up * VT                     //Coefficient of holes (in meter-square per second)
Dn = un * VT                     //Coefficient of electrons (in meter-square per second)

//Result

printf("\n Coefficient of holes is  %0.6f  m**2/s.\nCoefficient of electrons is  %0.4f  m**2/s.",Dp,Dn)
