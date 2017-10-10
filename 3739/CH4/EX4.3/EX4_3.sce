//Chapter 4, Example 4.3, page 136
clc
//Initialisation
fc=6.3*10**6                            //frequency in hertz

//Calculation
f=fc*sqrt(2)                       //maximum usable frequency

//Results
printf("Maximum usable frequency = %.3f MHz",(f*10**-6))
