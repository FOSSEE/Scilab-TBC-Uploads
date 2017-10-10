//Chapter 6, Example 6.10, page 246
clc
//Initialisation
f=1800*10**6                                 //frequency in Hz
c=3*10**8                                    //speed of light

//Calculation
h=c*f**-1                                  //wavelength
hv=20*h                                   //in metre
dh=10*h                                    //in metre

//Results
printf("hv = %.2f m ",hv)
printf("\ndh = %.2f m ",dh)
