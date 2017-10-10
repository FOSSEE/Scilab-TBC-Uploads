////Given
n1=3
n2=2
E1=-1.5                                       //ev
E2=-3.4                                       //ev
h=6.63*10**-34                                 //Js
c=3*10**8                                      //m/s
e=1.6*10**-19

//Calculation
v=(h*c)/((E1-E2)*e)

//Result
printf("\n Wavelength is  %d Armstrom",v*10**10)
printf("\nthe answers vary due to round off error")
