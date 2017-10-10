clc
//
//

//Variable declaration
M=8                                                                        // Bending moment(kip.in)
A=(2.5)*(1.5)                                                              // Area(in**2)  
R=5.969                                                                     
e=0.0314                                                                   // Distance(in)

//Calculation         
// Case(a)
Smax=((8)*(6.75-5.969))/((3.75)*(0.0314)*(6.75))                           // Maximum stress(ksi)  
Smin=((8)*(5.25-5.969))/((3.75)*(0.0314)*(5.25))                           // Minimum stress(ksi)

// Result
printf("\n Maximum stress = %0.3f ksi' ,Smax)
printf("\n Minimum stress = %0.3f ksi' ,Smin)
