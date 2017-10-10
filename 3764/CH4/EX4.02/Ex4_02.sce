clc
//

//Variable declaration
r=12                                                                     // Radius(mm)
p=2.5                                                                    // Mean radius(m)  
E=70                                                                     // Modulus of rigidity(GPa)
n=-1

//Calculation         
Y=(4*r)/(3*(%pi))                                                    // Ordinate(mm)
c=r-Y                                                                    // Distance from the neutral axis to the point of crossection(mm) 
Em=(c*(10**-3))/p                                                        // Maximum absolute value of the strain
Sm=((E*((10**9)))*Em)/((10**6)*(1.0))                                      // Maximum tensile stress(MPa)
Scomp=(n)*(Y/c)*(Sm)                                                     // Maximum compressive stress(MPa) 

// Result
printf("\n Maximum tensile stress = %0.3f MPa' ,Sm)
printf("\n Maximum compressive stress = %0.3f MPa' ,Scomp)
