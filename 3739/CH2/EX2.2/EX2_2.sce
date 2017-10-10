//Chapter 2, Example 2.2, page 26
clc
//Initialisation
c1=3*10**8                                    //speed of light in m/s
f1=100*10**6                                  //frequency in hertz
f2=1*10**9                                    //requency in hertz

//Calculation
v1=c1/(9)                                   //velocity in m/s
v2=c1                                       //velocity in m/s
h1=v1*f1**-1                                //wavelength at f1, v1
h2=v2*f1**-1                                //wavelength at f1, v2
h3=v1*f2**-1                                //wavelength at f2, v1
h4=v2*f2**-1                                //wavelength at f2, v2

//Result
printf("Velocity,")
printf("\nV1 = %.2f x10^7 m/s",(v1*10**-7))
printf("\nV2 = %.2f x10^8 m/s",(v2*10**-8))
printf("\n\nfor f1 = 100 MHz,")
printf("\nlambda1 = %f m",h1)
printf("\nlambda2 = %d m",h2)
printf("\n\nfor f2 = 1 GHz,")
printf("\nlambda1 = %.2f cm",(h3*10))
printf("\nlambda2 = %d cm",(h4*10**2))
