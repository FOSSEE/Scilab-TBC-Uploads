
//Variable declaration
Kb=1.38*10**-23;    //boltzmann constant
T1=293;    //temperature(K)
T2=305;    //temperature(K)
rho1=4.5;    //resistivity(ohm m)
rho2=2.0;    //resistivity(ohm m)
e=1.6*10**-19; 
//Calculation
Eg=2*Kb*log(rho1/rho2)/((1/T1)-(1/T2));     //energy gap(J)

//Result
printf('energy gap is %0.3f  eV   \n',(Eg/e))
