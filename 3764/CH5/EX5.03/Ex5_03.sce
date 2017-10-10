clc
//
//

//Variable declaration
// Reactions
Rb=40                                                                             // Reaction at B(kN)
Rd=14                                                                             // Reaction at D(kN)

// Calculations
// Shear and Bending-Moment Diagrams
V1=-20                                                                            // Force(kN) 
M1=0                                                                              // Moment(kN.m)
V2=-20                                                                            // Force(kN) 
M2=-50                                                                            // Moment(kN.m) 
V3=26                                                                             // Force(kN) 
M3=-50                                                                            // Moment(kN.m)
V4=26                                                                             // Force(kN)
M4=28                                                                             // Moment(kN.m)
V5=-14                                                                            // Force(kN)  
M5=28                                                                             // Moment(kN.m)
V6=-14                                                                            // Force(kN)
M6=0                                                                              // Moment(kN.m)  
// Maximum Normal Stress
S=(1/6.0)*(0.080)*((0.250**2))                                                    // Section modulus of the beam(m**3)
Mb=(50*(10**3))                                                                 // Moment(N.m)
sM=(Mb/S)/(((10**6)))                                                                         // Stress(Pa)

// Result
printf("\n Maximum normal stress in the beam = %0.3f MPa' ,sM)
