clear
//
//
//

//Variable declaration
KB=1.38*10**-23      //boltzmann constant
e=1.602*10**-19      //charge(c)
rho1=4.5
rho2=2.0
T1=293        //temperature(K)
T2=305        //temperature(K)

//Calculation
Eg=2*KB*log(rho1/rho2)/((1/T1)-(1/T2))        //energy gap(J)
Eg=Eg/e                                            //energy gap(eV)  

//Result
