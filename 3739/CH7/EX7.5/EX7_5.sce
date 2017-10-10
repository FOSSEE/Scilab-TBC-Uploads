//Chapter 7, Example 7.5, page 306
clc
//Initialisation
d1=10                                               //distance in km
d2=25                                               //distance in km
re=6370                                           //earth radius in km               
k=0.5                                               //climatic factor
f=4*10**9                                           //frequency in Hz
c=3*10**8                                          //speed of light
d=35                                               //distance in km
h3=400                                             //height in m

//Calculation
ho=(500*d1*d2)/(k*re)                                //Earth buldge in m
h=c*f**-1                                             //wavelength in m
r1=sqrt(d1*10**3*d2*10**3*h*(d*10**3)**-1)       //fresnel radius
amsl=h3+ho+13.9                                       //AMSL

//Results
printf("(1) Earth buldge = %.2f m",ho)
printf("\n(2) Fresnel radius = %.1f m",r1)
printf("\n(3) AMSL = %.1f m",amsl)
