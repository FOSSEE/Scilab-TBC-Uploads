clc
//


// Variable declaration
sY=240                                                                   // Yield strength(MPa)
A1=(0.1*0.02)                                                            // Area of cross section(m**2)
A2=(0.02*0.02)                                                           // Area of cross section(m**2)
A3=(0.02*0.06)                                                           // Area of cross section(m**2)
A4=(0.06*0.02)                                                           // Area of cross section(m**2)

// Calculation
//Neutral Axis
A=(100)*(20) + (80)*(20) + (60)*(20)                                     // Total area(mm**2)
y=(2400-((20)*(100)))/(20)                                               // Distance(mm)
//Plastic Moment
R1=(A1*sY*1000)                                                          // Resultant force(kN) 
R2=(A2*sY*1000)                                                          // Resultant force(kN)
R3=(A3*sY*1000)                                                          // Resultant force(kN) 
R4=(A4*sY*1000)                                                          // Resultant force(kN) 

Mp=(0.030*R1) + (0.010*R2) + (0.030*R3) + (0.070*R4)                     // Plastic moment(kN.m)

// Result
printf("\n Case(a) Plastic moment = %0.3f kN.m' ,Mp)
