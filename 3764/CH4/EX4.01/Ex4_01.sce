clc
//

//Variable declaration
c=1.25                                                               // Radius(in)
Sy=36                                                                // Stress(ksi)
b=0.8                                                                // Breadth(in)
h=2.5                                                                // Height(in)

//Calculation         
I=(1/12.0)*(b)*(h)**3                                                  // Centroidal moment of inertia(in**4)
M=(I/c)*(Sy)                                                         // Bending moment(kip.in)

// Result
printf("\n Bending moment = %0.3f kip.in' ,M)
