clc
//

//Variable declaration
Ex=155.0                                                                      // Modulus of elasticity in x direction(GPa)
Ey=12.10                                                                      // Modulus of elasticity in y direction(GPa)
Ez=12.10                                                                      // Modulus of elasticity in z direction(GPa)
Vxy=0.248                                                                     // Poissons ratio in xy direction
Vxz=0.248                                                                     // Poissons ratio in xz direction
Vyz=0.458                                                                     // Poissons ratio in yz direction
n=-1
F=140*((10**3))                                                             // Compressive load(kN)
L=0.060                                                                       // Length of cube(m)

//Calculation
//(a) Free in y and z Directions
Sx=(n*F)/(0.060*0.060)                                                        // Stress in x direction(MPa)
Sy=0                                                                          // Stress in y direction(MPa) 
Sz=0                                                                          // Stress in z direction(MPa)  
ex=Sx/Ex                                                                      // Lateral strains 
ey=n*((Vxy*Sx)/Ex)                                                            // Lateral strains 
ez=n*((Vxy*Sx)/Ex)                                                            // Lateral strains
DELTAx=ex*L                                                                   // Change in cube dimension in x direction(um) 
DELTAy=ey*L                                                                   // Change in cube dimension in y direction(um)
DELTAz=ez*L                                                                   // Change in cube dimension in z direction(um)
//(b) Free in z Direction, Restrained in y Direction
Sx=n*38.89                                                                    // Stress in x direction(MPa)
Sy=(Ey/Ex)*(Vxy)*(Sx)                                                         // Stress in y direction(MPa) 
Vyx=(Ey/Ex)*(Vxy)                                                             // Poissons ratio
ex=(Sx/Ex)-(((Vyx)*(Sy))/Ey)                                                  // Lateral strains in x direction
ey=0                                                                          // Lateral strains in y direction
ez=n*((Vxz*Sx)/Ex)-(((Vyz)*(Sy))/Ey)                                          // Lateral strains in z direction
DELTAx=ex*L*1000                                                              // Change in cube dimension in x direction(um) 
DELTAy=ey*L                                                                   // Change in cube dimension in y direction(um)
DELTAz=ez*L*1000                                                              // Change in cube dimension in z direction(um)

// Results
printf("\n Change in cube dimension in x direction=%1f um' ,DELTAx)
printf("\n Change in cube dimension in y direction=%1f um' ,DELTAy)
printf("\n Change in cube dimension in z direction=%1f um' ,DELTAz)
