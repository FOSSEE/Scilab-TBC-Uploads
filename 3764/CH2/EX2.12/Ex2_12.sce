clc
//

//Variable declaration
D=60                                                                       // Width(mm) 
d=40                                                                       // Width(mm)
r=8                                                                        // Radius(mm)
K=1.82                                                                     // Stress-concentration factor
Smax=165                                                                   // Allowable normal stress(MPa)

//Calculation
eave=(165/1.82)                                                            // Average stress in the narrower portion(MPa) 
P=((40*10*eave)/(1000))                                             // Largest Axial Load(kN)


// Results
printf("\n Largest Axial Load =%1f in' ,P)
