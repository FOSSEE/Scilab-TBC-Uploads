clear
//
//
//

//Variable declaration
e=1.6*10**-19     //charge(c)
RH=3.66*10**-4    //hall coefficient(m**3C-1)
rho=8.93*10**-3   //resistivity(ohm m)

//Calculation
p=1/(RH*e)        //hole concentration(m-3)
mew=RH/rho       //hole mobility(m**2/Vs)

//Result
printf("\n hole concentration is %0.1f  *10**22 m-3",p/10**22)
printf("\n hole mobility is %0.3f  *10**-2 m**2/Vs",mew*10**2)
