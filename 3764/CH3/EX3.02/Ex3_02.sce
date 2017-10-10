clc
//

//Variable declaration
G=77*((10**9))                                      // Modulus of rigidity(GPa) 
L=1.5                                                 // length of the shaft(m)
TWIST=2                                               // Allowable twist

//Calculation         
//Case(a)
phy=(2)*((2*(%pi))/(360))                         // Angle of twist(rad)
//Case(b)
J=1.021*((10**-6))                                  // Polar moment of inertia(m**4)
T=(((J*G)/(L))*(phy))/(1000)                          // Torque to be applied to the end of shaft(kN.m)

// Result
printf("\n Maximum torque that can be transmitted by the shaft as designed = %0.3f kN.m' ,T)
