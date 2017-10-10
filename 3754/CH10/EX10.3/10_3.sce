clear//

//Variables

n = 5.8 * 10**28                  //number of free electrons (in per cubic-meter)
p = 1.54 * 10**-8                 //resistivity (in ohm-meter)
q = 1.6 * 10**-19                 //charge (in Coulomb)
m = 9.1 * 10**-31                 //mass of electron (in kg)

//Calculation

sig = 1/p                         //conductivity (in siemen per meter)
mu = sig /(q * n)                 //mobility (in meter-square/volt-second)
t = mu * m / q                    //time (in second)

//Result

printf("\n Mobility of electrons is  %0.6f  m**2/V-s.\nRelaxation time is  %0.6f  ps.",mu,t*10**12)
