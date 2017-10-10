clear
//
//
//

//Variable declaration
H0=64*10**3    //initial field(ampere/m)
T=5    //temperature(K)
Tc=7.26   //transition temperature(K)

//Calculation
H=H0*(1-(T/Tc)**2)     //critical field(ampere/m)

//Result
printf("\n critical field is %0.2f  *10**3 ampere/m",H/10**3)
