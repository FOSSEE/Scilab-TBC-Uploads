clear
//
//
//

//Variable declaration
e=1.6*10**-19
RH=3.66*10**-4    //hall coefficient(m**3/coulomb)
sigma=112      //conductivity(ohm-1 m-1)

//Calculation
ne=3*%pi/(8*RH*e)    //charge carrier density(per m**3)
mew_e=sigma/(e*ne)      //electron mobility(m**2/Vs)

//Result
printf("\n charge carrier density is %0.0f  *10**22 per m**3",ne/10**22)
printf("\n electron mobility is %0.3f  m**2/Vs",mew_e)
