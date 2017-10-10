//Chapter 6, Example 6.1, page 186
clc

//Initialisation
c=3*10**8                                   //speed of light
f=400*10**6                                 //frequency in Hz
l1=15*10**3                                 //distance in m
l2=15*10**3                                //distance in m
l=30*10**3                                 //distance in m
k=1.33                                     //k factor
d1=15                                      //distance in Km
d2=15                                      //distance in Km
re=6370                                    //distance in Km

//Calculation
h=c*f**-1                                  //wavelength in m
r1=sqrt(l1*l2*h/l)                    //Fresnel radius
ho=(500*d1*d2)/(k*re)                      //Earth bulge

//Results
printf("(1) Fresnel radius, r1 = %d m",r1)
printf("\n(2) h0 = %.2f m",ho)
