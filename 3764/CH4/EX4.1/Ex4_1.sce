clc
//

//Variable declaration
sY=40                                                                   // Stress(ksi)
sU=60                                                                   // Stress(ksi)
E=(10.6)*((10**6))                                                    // Modulus of rigidity(psi)
FS=3                                                                    // Factor of safety

//Calculation
//Moment of Inertia
E=(10.6)*((10**6))                                                    // Modulus of rigidity(psi)
I=(((1/12.0)*3.25*(5**3))-((1/12)*(2.75)*(4.5**3))**2)            // Centroidal moment of inertia of a rectangle

//Allowable Stress
sALL=(sU/FS)                                                            // Allowable stress(ksi)
//Case(a) Bending Moment
c=(1/2.0)*(5)                                                             // Radius(in)
M=((12.97)*(20))/2.5                                                    // Bending moment(kip.in)
//Case(b) Radius of Curvature
p=((10.6*(10**6)*12.97)/(103.8*(10**3))**1)                     // Radius of curvature(in)

p=((p*0.08333))                                                  // Converting into feet(ft)  

//Alternative Solution.
Em=(sALL/(E*((10**-3))*(1.0)))                                              // Maximum strain(in./in)
p=(c/Em)                                                                // Radius of curvature(in)
p=((p*0.08333))                                                  // Converting into feet(ft) 


// Result
printf("\n Bending moment M for which factor of safety is 3 = %0.3f kip.in' ,M)
printf("\n Radius of curvature of tube = %0.3f ft' ,p)
