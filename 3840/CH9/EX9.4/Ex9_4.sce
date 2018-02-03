clear
//
//
//

//Variable declaration
Hc=200*10**3    //critical magnetic field(A/m)
Tc=12           //critical temperature(K)
H0=250*10**3    //critical magnetic field(A/m)

//Calculation
T=Tc*sqrt(1-(Hc/H0)**2)     //maximum critical temperature(K)

//Result
printf("\n maximum critical temperature is %0.3f  K",T)
