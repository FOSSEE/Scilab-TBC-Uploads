clc
//
//
//Variable declaration
l=0.020                                                                           // Length(m)
b=0.100                                                                           // Breadth(m)
V=500                                                                             // Vertical shear(N)
y=0.060                                                                           // Distance(m)

//Calculation         
A=l*b                                                                             // Area(m**2)
Q=A*y                                                                             // First moment of an area with respect to a given axis
I=(1/12.0)*(0.020)*(0.1**3) + 2*((1/12.0)*(0.1)*(0.02**3) + (0.020*0.1)*(0.06**2))    // Moment of inertia(m**4)    
q=(V*Q)/(I)                                                                       
F=(0.025)*q                                                                       // Shearing force in each nail(N)

// Result
printf("\n Shearing force in each nail is = %0.3f N' ,F)
