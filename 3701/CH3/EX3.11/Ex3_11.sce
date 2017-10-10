////Given
Ei=4*2.2*10**-18                           //Joule
h=6.6*10**-34                              //Js
c=3*10**8                                  //m/s

//Calculation
E1=-Ei
E2=E1/(2.0**2)
v=(h*c)/(Ei+E2)

//Result
printf("\n Wavelength is  %0.0f A",v*10**10)
