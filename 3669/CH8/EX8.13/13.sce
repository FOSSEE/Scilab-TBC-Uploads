
//Variable declaration
mewn=0.35;     //mobility of electrons(m**2/Vs)
e=1.602*10**-19;
rho=0.2;    //resistivity(ohm m)

//Calculation
n=1/(rho*e*mewn);      //density of donor atoms

//Result
printf('density of donor atoms is %0.3f  *10**19 electrons/m**3   \n',(n/10**19))