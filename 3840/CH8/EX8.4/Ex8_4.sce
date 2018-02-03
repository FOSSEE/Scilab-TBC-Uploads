clear
//
//
//

//Variable declaration
e=1.6*10**-19     //charge(c)
RH=3.22*10**-4    //hall coefficient(m**3C-1)
rho=8.5*10**-3    //resistivity(ohm m)

//Calculation
p=1/(RH*e)        //hole concentration(m-3)
mewp=RH/rho       //hole mobility(m**2/Vs)

//Result
printf("\n hole concentration is %0.1f  *10**21 m-3",p/10**21)
printf("\n hole mobility is %0.5f  m**2/Vs",mewp)
