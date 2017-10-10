//Chapter 5, Example 5.2, page 186
clc

//Initialisation
f=5                                    //frequency in Hz
er=15                                  //ground characteristics
s=0.01                                 //for vertically polarized waves
c=3*10**8                              //speed of light
e0=8.85*10**-12                        //permitivity of free space
d=80000                                //distance in m
pi=3.14

//Calculation
a=5**0.333
df=50/a                                 //distance in metre
h=c*(f*10**6)**-1                       //wavelength
b=s/(2*pi*f*e0*10**6)
b1=sqrt(er**2+b**2)
p=(pi*d)/(h*b1)

//from fig 5.8
As = 0.05                             //attenuation factor

//Results
printf("p = %d",p)
printf("\n|As| = %.2f",As)
