//Chapter 6, Example 6.4, page 233
clc

//Initialisation
f=150*10**6                             //frequency in Hz
c1=3*10**8                              //speed of light
h11=60                                  //in metre
d11=2000                                  //in metre
d1=259.6                                 //in metre
b=2000                                  //in metre
a=250                                  //in metre
h21=80                                  //in metre
d21=7259                                 //in metre
c=7250                                  //in metre

//Calculation
h=c1*f**-1                                               //wavelength
v1=h11*sqrt((2*(h*d1)**-1)+(1*d11**-1))
L1=6.9+20*log10(sqrt((v1-0.1)**2+1)+v1-0.1)     //path diffraction loss
v2=h21*sqrt((2*(h*d11)**-1)+(1*d21**-1))
L2=6.9+20*log10(sqrt((v2-0.1)**2+1)+v2-0.1)     //path diffraction loss

//Results
printf("Diffraction loss L1 = %.2f dB",L1)
printf("\n                 L2 = %.2f dB",L2)
