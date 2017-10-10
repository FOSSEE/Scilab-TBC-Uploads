clc
//
//

//Variable declaration
Sy=36                                                                       // Stress(ksi)
E=(29*((10**6)))                                                          // Modulus of elasticity(psi)
A=11.5                                                                      // Area(in**2) 
FS=2                                                                        // Factor of safety


//Calculation         
ratio=(4.71)*(E/(36*((10**3))))                                           // Value of the slenderness ratio

//Case(a) Effective Length
Sr=(24*12)/(1.98)                                                           // Value of the slenderness ratio
Scr=((0.877)*((%pi)**2)*(29*((10**3))))/(145.5)**2                    // Value of the slenderness ratio
Sall=(Scr/1.67)                                                             // Allowable stress(ksi)
Pall1=Sall*A                                                                 // Pressure(kips)
//Case(b) Bracing at Midpoint C                                                 
//xz Plane
Elxz=(144)/(1.98)                                                           // Slenderness ratio
//yz Plane
Elyz=(288)/(4.27)                                                           // Slenderness ratio

Se=(((%pi)**2)*(E))/(72.7)**2                                           // Stress(ksi)
Scr=(0.658)**(36/54.1)*(36)                                                 // Stress(ksi) 

Sall=(Scr)/(1.67)                                                           // Allowable load(ksi)
Pall2=Sall*A                                                                 // Force(ksi) 

//Result
printf("\n Effective centric load P if the effective length of the column is 24 = %0.3f kips",Pall1)
printf("\n Effective centric load P if bracing is provided to prevent the movement of the midpoint C in the xz plane = %0.3f ksi",Pall2)
