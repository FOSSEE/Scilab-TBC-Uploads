clc
//

// Variable declaration
Es=200                                                                    // Moduluss of rigidity(GPa)
Ew=12.5                                                                   // Moduluss of rigidity(GPa) 

//Transformed Section.
n=(Es/Ew)                                                                 // Ratio
//Neutral Axis
Y=(((0.160)*(3.2*0.020))/(3.2*0.020+0.470*0.300))                  // Distance(m) 

//Centroidal Moment of Inertia
I=(((1/12)*0.470*((0.3**3)))+(0.470*0.3*((0.05**2)))+((1/12)*(3.2)*((0.020**3)))+(3.2*0.020*((0.160-0.050**2)))**5) // Centroidal Moment of Inertia 

//Maximum Stress in Wood
sW=((50*((10**3)))*(0.200))/(2.19*(10**-3))                           // Maximum stress in wood(MPa)
sW=((sW/((10**6)))**2)                                              // Rounding

//Stress in Steel
sS=((16)*(50*((10**3)))*(0.120))/(2.19*((10**-3)))                    // Stress in steel(MPa) 
sS=((sS/((10**6)))**1)                                              // Rounding


// Result
printf("\n Maximum stress in the wood = %0.3f MPa' ,sW)
printf("\n Stress in steel = %0.3f MPa' ,sS)
