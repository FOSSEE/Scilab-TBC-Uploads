
//Variable declaration
mewn=0.3;     //mobility of electrons(m**2/Vs)
rho=0.25;     //resistivity(ohm m)
e=1.6*10**-19;

//Calculation
n=1/(rho*e*mewn);    //number of donor atoms(per m**3)

//Result
printf('number of donor atoms is %0.3f   *10**19 per m**3  \n',(n/10**19))