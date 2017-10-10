
//Variable declaration
mewe=0.13;     //mobility of electrons(m**2/Vs)
mewh=0.05;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;
ni=1.5*10**16;     //intrinsic concentration(per m**3)

//Calculation
sigma=ni*e*(mewe+mewh);     //conductivity(per ohm m)  

//Result
printf('conductivity is %0.3f  *10**-4 per ohm m   \n',sigma*10**4)  