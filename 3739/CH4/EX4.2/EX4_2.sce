//Chapter 4, Example 4.2, page 134
clc

//Initialisation
N=5*10**11                                    //Electron density in F layer

//Calculation
F=9*sqrt(N)                              //f0F frequency

//Results
printf("(1) hmin = 200Km  hmax = 400Km")         //from graph
printf("\n(2) F = %.1f Mhz",(F*10**-6))
