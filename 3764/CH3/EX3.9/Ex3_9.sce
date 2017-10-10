clc
//

//Bar with Square Cross Section
//Variable declaration
tALL=40                                                                  // Stress(MPa)


//Calculation
// Bar with square cross section
a=0.040                                                                  // Length(m) 
b=0.040                                                                  // Length(m)
temp=(a/b)                                                                
c1=0.208                                                                 // Coefficient
tmax=tALL                                                                // Maximum stress(MPa)
T1=(40)*((10**6))*(0.208)*((0.040**3))                                           // Torque(N.m)

// Bar with Rectangular Cross Section.
a=0.064                                                                  // Length(m)
b=0.025                                                                  // Length(m)
temp2=(a/b)
T2=(40)*((10**6))*(0.259)*(0.064)*((0.025**2))                                   // Torque(N.m)

//Square Tube
A=(0.034)*(0.034)                                                        // Area bounded by the center line of the cross section(m**2)
T3=((40)*((10**6))*(2)*(0.006)*(1.156)*((10**-3))**0)            // Torque(N.m)


// Result
printf("\n Largest torque on bar with square cross section = %1f N.m' ,T1)
printf("\n Largest torque on bar with rectangular cross section = %1f N.m' ,T2)
printf("\n Largest torque on square tube = %1f N.m' ,T3)
