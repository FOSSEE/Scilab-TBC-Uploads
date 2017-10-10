////Given
E=-3.4                                        //total energy in ev
h=6.63*10**-34                                //Js
m=9.1*10**-31
e=1.6*10**-19                                   

//Calculation
//
K=-E
v=h/(sqrt(2*m*K*e))

//Result 
printf("\n (a) Kinetic energy  %0.3f ev",K)
printf("\n (b) de broglie wavelength of the electron is  %0.3f A",v*10**10)
