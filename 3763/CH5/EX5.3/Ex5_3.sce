clear
//
//
//

//Variable declaration
e=1.6*10**-19
m=9.1*10**-31  //mass(kg)
n=5.8*10**28  
rho=1.54*10**-8    //resistivity(ohm m)
E=1*10**2

//Calculation
tow=m/(rho*n*e**2)      //relaxation time(s)
mew_e=1/(rho*e*n)       //mobility of electrons(m**2/Vs)
vd=mew_e*E       //drift velocity(m/s)

//Result
printf("\n relaxation time is %0.0f  *10**-14 s",tow*10**14)
printf("\n mobility of electrons is %0.0f  *10**-3 m**2/Vs",mew_e*10**3)
printf("\n drift velocity is %0.1f  m/s",vd)
