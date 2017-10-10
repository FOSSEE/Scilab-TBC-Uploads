
//Variable declaration
ni=2.5*10**19;     //intrinsic concentration(per m**3)
mewn=0.4;     //mobility of electrons(m**2/Vs)
mewp=0.2;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;

//Calculation
sigma_i=ni*e*(mewn+mewp);
rhoi=1/sigma_i;     //resistivity(ohm m)

//Result
printf('resistivity is %0.3f   ohm m  \n',(rhoi))