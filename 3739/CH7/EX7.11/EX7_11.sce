//Chapter 7, Example 7.11, page 333
clc

//Initialisation
kq=2.6*10**-6                                 //geoclimatic coefficient
f=6                                           //frequency in GHz
d=45                                          //distance in Km
gc=0.098                                      //GC factor
ab=0.25                                       //geoclimatic factor

//Calculation
po=kq*f*gc*d**3                              //In country
po1=0.3*ab*(f*4**-1)*(d*50**-1)**3           //In mountainous area



//Results
printf("Fading occurrence probability")
printf("\n(1) In country = %.2f",po)
printf("\n(2) In mountainous area = %.3f",po1)
