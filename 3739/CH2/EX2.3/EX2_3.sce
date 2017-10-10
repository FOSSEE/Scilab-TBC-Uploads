//Chapter 2, Example 2_3, page 37
clc

//Initialisation
s=0.08                                     //medium conductivit
w=10**7                                    //angular velocity
e=8.85*10**-7                              //permitivity if free space
u=14                                       //medium permeability
uo=4*3.14*10**-7                           //permeability of free space
pi=3.14

//Calculation
f=w*(2*pi)**-1                          //frequency
a1=sqrt(f*pi*s*uo)                       //attenuation
b=a1                                       //phase
d=complex(a1,b)
y=d                                       //propagation constants
z=log10(0.5)/(-log10(exp(1))*2*a1)          //Depth of the land

//Result
printf("(1) Attenuation = %.1f Np/m",a1)
printf("\n    Phase = %.1f Rad/m",b)
printf("\n    Propagation constant = %.1f",real(y))
printf("\n                           + %.1f j rad/m",imag(y))
printf("\n(2) Depth of land = %.2f m",z)
