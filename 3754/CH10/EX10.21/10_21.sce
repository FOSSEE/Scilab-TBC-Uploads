clear//

//Variables

RH = 3.66 *10**-4                  //Hall coefficient (in cubic-meter per Coulomb)
p = 8.93 * 10 **-3                 //Resistivity (in ohm-meter)
q = 1.6 * 10**-19                  //Charge on electron (in Coulomb)

//Calculation

sig = 1/p                          //Conductivity (in per ohm-meter)
u = sig * RH                       //mobility (in meter-square per volt-second)
n = 1 / (RH * q)                   //Density of charge carriers (in per cubic-meter)

//Result

printf("\n Mobility of charge carriers is  %0.3f  m**2/V-s.\nDensity of charge carriers is  %0.3f  m**-3.",u,n)
