
clc
// Example 4.2.py
// In Example 4.1, the deflection angle is increased to theta = 30 degrees. 
// Calculate the pressure and Mach number behind the wave, and compare these
// results with those of Example 4.1.


// Variable declaration
M1 = 3.0          // upstream mach number
p1 = 1.0          // upstream pressure (in atm)
T1 = 288          // upstream temperature (in K)
theta = 30        // deflection (in degrees)

// Calculations 
// subscript 2 means behind the shock

// from figure 4.5 from M1 = 3.0, theta = 30.0 deg.
beta1 = 52.0                 // shock angle (in degrees)

// degree to radian conversion is done by multiplying by %pi/180
//
Mn1 = M1 * sin(beta1*%pi/180) // upstream mach number normal to the shock

// from Table A2 for Mn1 = 2.364
p2_by_p1 = 6.276            // p2/p1
Mn2 = 0.5286

p2 = p2_by_p1 * p1          // p2 (in atm) = p2/p1 * p1
M2 = Mn2/(sin((beta1-theta)*%pi/180)) // mach number behind the shock


printf("\n Shock wave angle %.2f degrees",(beta1))

printf("\n p2 = %.3f atm", p2)

printf("\n M2 = %.2f ", M2)
printf("\n comparison")
