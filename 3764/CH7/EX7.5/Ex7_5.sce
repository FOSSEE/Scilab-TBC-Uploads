clc
//
//

//Variable declaration
n=-1
Sx=6
Sy=3.5
OC=4.75
CA=3.25
BC=3.25

//Calculation         
// Case(a) Principal Planes and Principal Stresses
Save=(Sx+Sy)/2.0                                                                    // Average stress(ksi)
R=sqrt(1.25**2 + 3**2)                                                            // Radius of circle(ksi)
Sa=OC+CA                                                                          // Principal stress(ksi)
Sb=OC-BC                                                                          // Principal stress(ksi) 
phyp=(67.4)/2.0

// Case(b) Maximum shearing stress
tmax=(1/2.0)*(Sa)                                                                   // Maximum torque(ksi)
 
//Result
printf("\n Case(a) Principal stress at A = %0.3f ksi' ,Sa)
printf("\n Case(a) Principal stress at B = %0.3f ksi' ,Sb)
printf("\n Case(b) Principal plane = %0.3f ksi' ,phyp)
printf("\n Case(c) Maximum shearing stress = %0.3f ksi' ,tmax)
