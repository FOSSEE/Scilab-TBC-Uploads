clc
//
//

//Variable declaration
L=2                                                                         // Length(m)
E=13*((10**9))                                                            // Modulus of elasticity(GPa)   
Sall=12                                                                     // Stress(MPa)
FS=2.5                                                                      // Factor of safety(2.5)
Ld1=100                                                                     // Load force(kN)     
Ld2=200                                                                     // Load force(kN)  


//Calculation         
//(a) For the 100-kN Load
Pcr=FS*Ld1*(1000.0)                                                           // Pressure(kN) 
I=(Pcr*(L**2))/(((%pi)**2)*E)                                           // Moment of inertia(m**4)   
a1=((I*12)**(1/4.0))                                                   // Side of square(mm)

S=(100)/((0.1)**2)                                                          // Normal stress in column(MPa) 

//(b) For the 200-kN Load 
Pcr=FS*(Ld2)*(1000.0)                                                         // Pressure(kN)
I=(Pcr*(L**2))/(((%pi)**2)*E)                                           // Moment of inertia(m**4)
a=((I)*12)**(1/4.0)                                                           // Side of square(mm)
S=(200/(0.11695)**2)                                                        // Normal stress(MPa)
A=(200/12.0)*((10**-3))                                                     // Area of cross section(m**2)
a2=(A)**(1/2.0)*(1000)                                                        // Side of square(mm)

//Result
printf("\n Case(a): Size of cross section if the column is to safetly support 100 kN = %0.3f psi ",a1)
printf("\n Case(b): Size of cross section if the column is to safetly support 200 kN = %0.3f psi ",a2)
