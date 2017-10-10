//Chapter 6, Example 6.4
clc
//Initialisation
w=25                          //angular frequency
C=10*10**-3                    //capacitance in farad
Ic=2                          //current in ampere

//Calculation

Xc=1/(w*C)                     //Capacitive Reactance
Vc=Ic*Xc                       //voltage across capacitor

//Results
printf("Voltage, V = %d V r.m.s",Vc)
