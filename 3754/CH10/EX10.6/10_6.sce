clear//

//Variables

l = 0.2 * 10**-3                    //length (in meter)
A = 0.04 * 10**-6                   //Area of cross section (in square-meter)
V = 1                               //Voltage (in volts)
I = 8 * 10**-3                      //current (in Ampere)
un = 0.13                           //mobility of electron (in m**2 per volt-second)
q = 1.6 * 10**-19                   //charge on electron (in Coulomb)

//Calculation


R = V/I                              //Resistance (in ohm)
p = R * A/l                          //Resistivity (in ohm-meter)
sig = 1/p                            //Conductivity (in siemen per meter)
n = sig / (q * un)                   //concentration (in per cubic-meter)   
J = I/A                              //current density (in Ampere per square-meter)
v = J/(n*q)

//Result

printf("\n Concentration of free electrons is  %e  m**-3.\nDrift velocity is  %0.3f  m/s.",n,v)
