clear//

//Variables

p = 100.0              //resistivity (in ohm-meter)
q = 1.6 * 10**-19      //Charge on a electron (in Coulomb)
un = 0.36              //donor concentration (in per cubic-meter)

//Calculation

sig = 1/p              //conductivity (in siemen per meter)
n = sig /(q * un)      //intrinsic concentration (in per cubic-meter)
ND = n                 //Donor concentration (in per cubic-meter) 

//Result

printf("\n Donor concentration is  %0.3f  m**-3.",ND)
