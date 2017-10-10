clear//

//Variables

ni = 1.41 * 10**16                    //intrinsic concentration (in per cubic-metre) 
un = 0.145                            //mobility of electrons in germanium (in metre-square/volt-second)
up = 0.05                             //mobility of holes in germanium (in metre-square/volt-second)
q = 1.6 * 10**-19                     //charge of electron (in Coulomb)
 
//Calculation

sig = q * ni * (un + up)              //Conductivity of germanium (in siemen per metre)

//Result

printf("\n Intrinsic conductivity of silicon is  %0.3f  S/m.",sig)
printf("\n Contribution by electron is  %0.3f  S/m.",q*ni*un)
printf("\n Contribution by electron is  %0.3f  S/m.",q*ni*up)
