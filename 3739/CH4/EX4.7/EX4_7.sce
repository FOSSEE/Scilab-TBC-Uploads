//Chapter 4, Example 4.7, page 147
clc
//Initialisation
f=1.5*10**9                                        //frequency in Hz
tec=10**18                                         //total electron content
g=5*10**-3                                         //geomagnetic field intensity
a=3.36*10**2

//Calculation
teta= a*g*tec*(f**-2)                             //Faraday rotation in Radian
c=0.8422
x=20*log10(c)                                //loss value in dB

//Results
printf("(1) Faraday rotation = %.1f Rad",teta)
printf("\n(2) Loss = %f dB",x)
