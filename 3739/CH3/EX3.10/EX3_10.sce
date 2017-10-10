//Chapter 3, Example 3.10, page 92
clc
//Initialisation
f=5*10**9                                                         //frequency in Hz
c=3*10**8                                                         //speed of light
h1=6                                                              //in metre
h2=2                                                              //in metre
pi=3.14

//Calculation
h=c*f**-1                                                       //wavelength 
w=atan(h1*2250**-1)                                        //grazing angle in radian
w1=w*180*pi**-1                                        //grazing angle in degree
a=((2*pi*h1*h2)*(h*300)**-1)*3.14*180**-1
e=sin(a) 
F=e*2*180*pi**-1                                              //PGF value (wrong value calculated in textbook)
LR=20*log10(F)                                              //Decrease in received signal level


//Results
printf("(1) Grazing angle = %.2f degree",w1)
printf("\n(2) PGF value = %f",F)                                              //The answer provided in the textbook is wrong
printf("\n(3) Decrease in received signal level = %.2f dB",LR)                //The answer provided in the textbook is wrong
