clc
//

//Variable declaration
E=29*((10**6))                                                   // Modulus of elasticity(psi)                        
L1=12                                                              // Length(in) 
L2=12                                                              // Length(in)
L3=16                                                              // Length(in)
A1=0.9                                                             // Area(in**2) 
A2=0.9                                                             // Area(in**2)
A3=0.3                                                             // Area(in**2) 
P1=60*((10**3))                                                  // Internal force(lb)
P2=15*((10**3))                                                  // Internal force(lb)
P3=30*((10**3))                                                  // Internal force(lb)

//Calculation         
Delta=((1/E)*(((P1*L1)/A1)+(-(P2*L2)/A2)+((P3*L3)/A3)))     // deformation of the steel rod(in)


//Result
printf("\n Deformation of the steel rod = %0.3f in' ,Delta)
