//Chapter 6, Example 6.6, page 240
clc

//Initialisation
q90=1.282                              //cumulative distribution value of 90%
sl=8                                   //standard deviation
q97=1.881                              //cumulative distribution value of 97%
pt=5                                   //transmitter power

//Calculation
fm=q90*sl                             //fade margin
fm1=q97*sl                             //fade margin
p=fm1-fm                               //power in dB
p1=pt*10**(p/10)                       //power in watt

//Results
printf("(1) Fade margin for received signal = %.3f dB",fm)
printf("\n(2) New transmitter power = %d W",p1)
