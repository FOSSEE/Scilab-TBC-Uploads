clc
//
//
//Variable declaration
tw=5.8                                                     // Distance(mm)
d=349                                                      // Distance(mm)
Vmax=58                                                    // Force(kN)

//Calculation         
Aweb=d*tw                                                  // Area(mm*2)
Tmax=(Vmax/Aweb)*(1000)                                    // Maximum shearing stress(ksi)

// Result
printf("\n Maximum allowable shearing stress for steel beam = %0.3f MPa' ,Tmax)
