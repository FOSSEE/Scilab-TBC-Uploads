clc
//

//Variable declaration
t=0.160                                               // thickness(in)
T=24                                                  // Torque(kip.in) 


//Calculation         
// Case(a)
Area=3.84*2.34                                        // Area bounded by centre line(in**2) 
t=(T)/(2*t*Area)                                      // shearing stress in wall(ksi) 
// Case(b)
tABAC=0.120
tBDCD=0.200
tAB=(T)/(2*tABAC*Area)                                // shearing stress in wall(ksi)
tAC=tAB
tBD=(T)/(2*tBDCD*Area)                                // shearing stress in wall(ksi)
tCD=tBD

// Result
printf("\n Case(a): Shearing stress in each wall = %1f ksi' ,t)
printf("\n Case(b): Shearing stress in wall AB and AC= %1f ksi ' ,tAB)
printf("\n Case(b): Shearing stress in wall BD and CD= %1f ksi ' ,tCD)
