
//Variable declaration
Kb=1.38*10**-23;    //boltzmann constant
T=300;    //temperature(K)
mewe=0.19;     //mobility of electrons(m**2/Vs)
e=1.6*10**-19;

//Calculation
Dn=mewe*Kb*T/e;      //diffusion coefficient(m**2/sec)

//Result
printf('diffusion coefficient is %0.3f  *10**-3 m**2/sec   \n',(Dn*10**3))