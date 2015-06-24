//Chapter 1, Example 1.2
clc
E=10e-6                           //electric field strength in volts/metre
Z=377                             //wave impedance in ohm
P=2.65*10^-13                     //power incident on a surface area 1m2

D1=10                             //distance in kilometre
D2=100                            //distance in kilometre
P1=(D1/D2)^2                      //power density factor
PD=P1*P                           //power dentity in W/m2

Erms=sqrt(PD*Z)                   //Erms at 100Km
Hrms=Erms/Z                       //Hrms at 100Km
printf("(a) Erms at 100km = %.3f microV/m\n\n",Erms*10^6)
printf("(b) Hrms at 100km = %.3f nA/m\n\n",Hrms*10^9)
