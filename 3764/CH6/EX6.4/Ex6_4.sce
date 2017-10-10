clc
//
//

//Variable declaration
l=0.75                                                     // Distance(in)
b=3                                                        // Breadth(in)  
V=600                                                      // Vertical shear(lb)
y=1.875                                                    // Distance(in)

//Calculation         
Q=l*b*y                                                    
I=(1/12.0)*((4.5**4)-(3**4))                                 // Moment of inertia(in**4)
q=(V*Q)/(I)                                                
F=(1.75)*(46.15)                                           // Shearing force(lb)

// Result
printf("\n Shearing force in each nail = %0.3f lb' ,F)
