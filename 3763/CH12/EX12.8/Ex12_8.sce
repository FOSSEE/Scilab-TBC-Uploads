clear
//
//
//

//Variable declaration
dz1=4*10**-18    //diffusivity(m**2/s)
dz2=5*10**-13    //diffusivity(m**2/s)
T1=773    //temperature(K)
T2=1273   //temperature(K)
T3=573   //temperature(K)
T4=973   //temperature(K)

//Calculation
x1=(log(dz1))

y1=(log(dz2))

x2=(-1/(8.314*T1))

y2=(-1/(8.314*T2))

x=((x1-y1))

y=((x2-y2))

Q=x/y      //activation energy(J/mol)
z=(y1-(y2*Q))

D0=exp(z)          //diffusion coefficient(m**2/Vs)
D1=D0*exp(-Q/(8.314*T3))    //diffusivity at 300 C(m**2/s)
D2=D0*exp(-Q/(8.314*T4))    //diffusivity at 700 C(m**2/s)

//Result
printf("\n activation energy is %0.3f  kJ/mol",Q/10**3)
printf("\n answer varies due to rounding off errors")
printf("\n diffusion coefficient is %0.3f  *10**-4 m**2/s",D0*10**4)
printf("\n diffusivity at 300 C is %0.2f  *10**-23 m**2/s",D1*10**23)
printf("\n diffusivity at 700 C is %0.3f  *10**-15 m**2/s",D2*10**15)
printf("\n answer given in the book is wrong")
