clc//
//
//

//Variable declaration
k=1.38*10^-23;    //boltzmann constant(J)
T=24600;     //temperature(K)
m=9.108*10^-31;    //mass(kg)

//Calculation
vF=sqrt(2*k*T/m);     //fermi velocity(m s-1)

//Result
printf("\n fermi velocity is %0.2f *10^6 m s-1",vF/10^6)
