//Chapter 4, Example 4.11, page 164
clc
//Initialisation
R12=150                                          //12 month average value
fs0=4.416
fs100=5.473
n=0.23
pi=3.14
x=45*pi/180                                 //zenith angle in radians                    

//Calculation
f1=63.7+0.728*R12+0.00089*R12**2
fs=fs0+0.01*(fs100-fs0)*R12
F1=fs*(cos(x))**n                            //critical frequency

//Results
printf("(1) R12 = %d",R12)
printf("\n(2) F12 = %d",f1)
printf("\n(3) f0F1 = %.2f MHz",F1)
