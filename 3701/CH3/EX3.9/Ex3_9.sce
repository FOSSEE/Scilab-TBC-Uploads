////Given
v=970.6                              //A
h=6.63*10**-34                       //Js 
c=3*10**8                            //m/s
e=1.6*10**-19

//Calculation
//
E=((h*c)/(v*e))*10**10
En=-13.6+E
n=sqrt(-13.6/En)
E3=-13.6/(3.0**2)
vmax=(h*c)/((-E3+En)*(1.6*10**-19))

//Result
printf("\n Longest wavelength is  %0.0f A",vmax*10**10)
