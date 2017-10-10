clc
//
//

//Variable declaration
E=(29*((10**6)))                                                              // Modulus of elasticity(psi)
FS=2                                                                            // Factor of safety  
A=3.54                                                                          // Area of cross section(in**2) 
I=8.00                                                                          // Moment of inertia(in**4)
r=1.50                                                                          // Radius(in)
c=2.00                                                                          // Distance(in) 
Lab=8

//Calculation         
// Effective Length
Le=2*(Lab)                                                                      // Effective length(in)
// Critical Load
Pcr=((((%pi)**2)*E*(8.0))/(192.0)**2)/(1000.0)                                    // Critical load(kips)

//Case(a) Allowable Load and Stress
Pall=Pcr/FS                                                                     // Allowable load(kips)
S=Pall/A                                                                        // Allowable Stress(ksi)

//Case(b) Eccentric Load
ym=(0.75)*(2.252-1)                                                             // Distance(in)
Sm=(31.1/3.54)*(1+(0.667)*(2.252))                                              // Distance(in)

//Result
printf("\n Case(a): Allowable load = %0.3f kips",Pall)
printf("\n Case(a): Allowable stress = %0.3f ksi ",S)
printf("\n Case(b): The horizontal deflection of the top of the column = %0.3f in ",ym)
printf("\n Case(b): Maximum normal stress in the column = %0.3f ksi ",Sm)
