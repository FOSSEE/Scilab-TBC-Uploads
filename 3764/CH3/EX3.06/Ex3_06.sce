clc
//

//Variable declaration
P=5                                                           // Power(hp)
f=3600                                                        // frequency(rpm) 
Tmax=8500                                                     // Maximum torque(psi)

//Calculation         
P=P*(6600)                                                    // Converting power into lb/s
f=(3600)/(60.0)                                                 // Converting frequency into cycles per second
T=(P)/(2*(%pi)*f)                                         // Torque exerted on the shaft
Ratio=T/Tmax                                                  // Here we are finding the value of J/c
c=(((10.30)*((10**-3))*(2))/(%pi))**(1/3.0)
d=2*c                                                         // Diameter of the shaft that should be used

//Result
printf("\n Case(a): Size of shaft = %1f lb.in' ,d)
