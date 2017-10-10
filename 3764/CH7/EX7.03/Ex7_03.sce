clc
//
//

//Variable declaration
sx=100                                                                  // Force(MPa)
sy=60                                                                   // Force(MPa)
CF=20                                                                   // Force(MPa)
FX=48                                                                   // Force(MPa) 
OC=80                                                                   // Force(MPa)
CA=52                                                                   // Force(MPa)
BC=52                                                                   // Force(MPa)  

// Calculation
//Construction of Mohr’s Circle
R=sqrt(20**2+48**2)                                                     // Radius of circle(MPa)

        
//Case(a) Principal Planes and Principal Stresses
phyp=(67.4)/2.0                                                           // Angle(degree)
Smax=OC+CA                                                              // Maximum stress(MPa)
Smin=OC-BC                                                              // Min stress(MPa)

//Case(b) Stress Components on Element Rotated 30
phy=180-60                                                              // Angle(degree)
Sxl=80-(52*(cos(52.6*(%pi*2)/(360.0))))
Syl=80+(52*(cos(52.6*(%pi*2)/(360.0))))
txlyl=52*(sin(52.6*(%pi*2)/(360.0)))

// Result
printf("\n Case(a) Principal planes angle = %0.3f MPa' ,phyp)
printf("\n Case(b) Maximum principal stress = %0.3f MPa' ,Smax)
printf("\n Case(b) Minimum principal stress = %0.3f MPa' ,Smin)
printf("\n Case(c) Stress in x direction = %0.3f MPa' ,Sxl)
printf("\n Case(c) Stress in y direction = %0.3f MPa' ,Syl)
printf("\n Case(c) Stress in x and y direction = %0.3f MPa' ,txlyl)
