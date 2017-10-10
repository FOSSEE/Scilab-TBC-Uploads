clc
//

//Variable declaration
Es=29*((10**6))                                                          // Modulus of rigidity(psi)
Eb=15*((10**6))*(1.0)                                                          // Modulus of rigidity(psi) 
M=40                                                                       // Bending moment(kip.in)
h=3                                                                        // Height(3)
b=2.25                                                                     // Breadth(in) 
c=1.5                                                                      // Distance(in)

//Calculation         
n=Es/Eb                                                                    // Ratio
W=0.75*n                                                                   // width(in)
I=(1/12.0)*(b)*((h)**3)                                                      // Moment of inertia of the transformed section(in**4)
Sm=(M*c)/(I)                                                               // Maximum stress in the transformed section(ksi)
Sbrass=Sm                                                                  // Maximum stress in brass portion(ksi)
Ssteel=1.933*(Sbrass)                                                      // Maximum stress in steel portion(ksi)

// Result
printf("\n Maximum stress in brass portion = %0.3f ksi' ,Sbrass)
printf("\n Maximum stress in steel portion = %0.3f ksi' ,Ssteel)
