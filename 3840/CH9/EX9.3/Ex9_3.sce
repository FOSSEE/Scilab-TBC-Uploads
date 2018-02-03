clear
//
//
//

//Variable declaration
T=2         //temperature(K)
Tc=3.7      //critical temperature(K)
H0=0.0306   //critical magnetic field(A/m)

//Calculation
Hc=H0*(1-(T/Tc)**2)    //critical field(Tesla)

//Result
printf("\n critical field is %0.5f  Tesla",Hc)
