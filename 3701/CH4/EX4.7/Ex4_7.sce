////Given
T=27                            //temperature in degree c
K=1.38*10**-23                  //boltzmann constant in J/K
h=6.63*10**-34                  //Js
m=1.67*10**-27

//Calculation
//
T1=T+273
v=h/(sqrt(2*m*K*T1))

//Result
printf("\n de broglie wavelength is  %0.2f A",v*10**10)
