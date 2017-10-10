clc
//

//Variable declaration
n=-1

//Calculation
//Centroid
sumA=3000                                                                       // Summing up the area(mm**2) 
M=3                                                                             // Couple(kN.m) 
cA=0.022                                                                        // Distance(m)                 
Y=(114*(10**6))/(3000.0)                                                        // Distance(mm)
//Centroidal Moment of Inertia
Ix=((1/12.0)*(90)*((20**3)) + (90*20*(12**2)) + ((1/12.0)*(30)*((40**3))) + (30*40*(18**2)))/((10**12)*(1.0)) // Centroidal moment of inertia(m**4)  
//Case(a) Maximum Tensile Stress
sA=((M*cA)/(Ix)*(1.0))/(1000.0)                                                          // Maximum tensile stress(MPa) 
//Maximum Compressive Stress
sB=n*(3*0.038)/((868*(10**-9)*(10**3)))                                      // Maximum compressive stress(MPa) 
//Case(b) Radius of Curvature
p=((165*868*((10**-9)))/(3))*((10**6))                                       // Radius of curvature(m)


// Result
printf("\n Maximum tensile stress = %0.3f MPa' ,sA)
printf("\n Maximum compressive stress = %0.3f MPa' ,sB)
printf("\n Radius of curvature = %0.3f ft' ,p)
