clc
// Example 4.9.py
// Consider the arrangement shows in fig. 4.29. A 15 degree half angle diamond 
// wedge airfoil is in supersonic flow at zero angle of attack. A pitot tube is
// inserted into the flow at the location shown in fig 4.29. The pressure measured
// by the Pitot tube is 2.596 atm. At point a on the backface, the pressure is 0.1
// atm. Calculate the freestream Mach number M1.

//

// Variable declaration
theta = 15.0    // wedge angle/deflection (in degrees)
po4 = 2.596     // measured pressure (in atm)
p3 = 0.1        // pressure at point a (in atm)

// Calculations 

po4_by_p3 = po4/p3

// from Table A 2 for po4/p3  = 25.96
M3 = 4.45
v3 = 71.27
v2 = v3 - 2*theta

// from Table A 5, for v2 = 41.27 degrees
M2 = 2.6
// Mn2 = M2*sin((beta1-theta)*%pi/180)  @equation 1

// Guessing

// Guess 1
M1 = 4.0                          // Guess for freestream number
beta1 = 27.0                       // from fig 4.5 (in degrees)
Mn1 = M1*sin(beta1*%pi/180)         // mach number normal to shock

// from Table A2 for Mn1 = 1.816
Mn2 = 0.612                     
// but Mn2 from equation 1 is 0.54

// Guess 2
M1 = 4.5                          // Guess for freestream number
beta1 = 25.5                       // from fig 4.5 (in degrees)
Mn1 = M1*sin(beta1*%pi/180)         // mach number normal to shock

// from Table A2 for Mn1 = 1.937
Mn2 = 0.588                     
// but Mn2 from equation 1 is 0.47

// Guess 3
M1 = 3.5                          // Guess for freestream number
beta1 = 29.2                       // from fig 4.5 (in degrees)
Mn1 = M1*sin(beta1*%pi/180)         // mach number normal to shock

// from Table A2 for Mn1 = 1.71
Mn2 = 0.638                     
// but Mn2 from equation 1 is 0.638




// Result 
printf("\n Freestream mach number is %.1f", M1)

