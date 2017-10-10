clear
//
//
//

//Variable declaration
D0=0.73*10**-4     //diffusion coefficient(m**2/s)
Q=170*10**3     //activation energy(J/mol)
R=8.314 
T=873    //temperature(K)

//Calculation
D=D0*exp(-Q/(R*T))     //diffusion(m**2/s)

//Result
printf("\n diffusion is %0.1f  *10**-15 m**2/s",D*10**15)
