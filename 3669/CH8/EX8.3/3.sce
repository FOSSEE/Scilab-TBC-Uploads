
//Variable declaration
mewn=0.21;     //mobility of electrons(m**2/Vs)
e=1.6*10**-19;
Kb=1.38*10**-23;    //boltzmann constant
T=300;    //temperature(K)

//Calculation
Dn=mewn*Kb*T/e;     //diffusion coefficient of electrons(m**2/s)

//Result
printf('diffusion coefficient of electrons is %0.3f  *10**-4 m**2/s   \n',(Dn*10**4))