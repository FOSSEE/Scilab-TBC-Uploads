//Chapter 6, Example 6.2
clc
//Initialisation
pi=3.14                       //pi
f=50                          //frequency in hertz
C=2*10**-6                    //capacitance in farad


//Calculation
w=2*pi*f                       //angular frequency
Xc=1/(w*C)                     //Capacitive Reactance

//Results
printf("Reactance, Xc = %.2f KOhm",Xc/1000)
