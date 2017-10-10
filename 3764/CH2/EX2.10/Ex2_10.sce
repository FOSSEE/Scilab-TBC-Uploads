clc
//

//Variable declaration
G=90                                                                      // Modulus of rigidity(ksi)
disp1=0.04                                                                 // Displacement of upper rod(in)
Lda=2                                                                     // Height of bar(in)
A=8*2.5                                                                   // Area of cross section(in**2)

//Calculation
Yxy=(disp1/Lda)                                                            // Shearing strain(rad)
Txy=(90*((10**3)))*(0.020)                                              // Shearing stress(psi) 
P=(Txy*A)/((10**3))                                                     // Force exerted on the upper plate(kips) 

// Results
printf("\n Shearing strain in rod=%1f rad' ,Yxy)
printf("\n Force exerted on the upper plate=%1f kips' ,P)
