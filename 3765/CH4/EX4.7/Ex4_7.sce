clc
// Example 4.7.py
// Consider a horizontal supersonic flow at Mach 2.8 with a static pressure and
// temperature of 1 atm and 519 R, respectively. This flow passes over a compr-
// ession corner with deflection angle of 16 degrees. The oblique shock generated
// at the corner propagates into the flow, and is incident on a horizontal wall, 
// as shown in Fig. 4.15. Calculate the angle phi made by the reflected shock wave
// with respect to the wall, and the Mach number, pressure and temperature behind
// the reflected shock.


// Variable declaration
M1 = 2.8          // upstream mach number
p1 = 1.0          // upstream pressure (in atm)
T1 = 519.0        // upstream temperature (in R)
theta = 16.0      // deflection (in degrees)

// Calculations 
// subscript 2 means behind the shock

// from figure 4.5 from M1 = 2.8, theta = 16.0 deg.
beta1_1 = 35.0                         // shock angle (in degress)

// degree to radian conversion is done by multiplying by %pi/180
//
Mn1 = M1 * sin(beta1_1*%pi/180)         // upstream mach number normal to the shock

// from Table A2 for Mn1 = 1.606
p2_by_p1 = 2.82                       // p2/p1
T2_by_T1 = 1.388                      // T2/T1
Mn2 = 0.6684                


p2 = p2_by_p1 * p1                    // p2 (in atm) = p2/p1 * p1
T2 = T2_by_T1 * T1                    // T2 (in R) = T2/T1 * T1

M2 = Mn2/(sin((beta1_1-theta)*%pi/180)) // mach number behind the shock

// from figure 4.5 from M2 = 2.053, theta = 16.0 deg.
beta1_2 = 45.5                         // shock angle of reflected(in degress)

// degree to radian conversion is done by multiplying by %pi/180
Mn2 = M2 * sin(beta1_2*%pi/180)         // upstream mach number normal to the shock

// from Table A2 for Mn1 = 1.46
p3_by_p2 = 2.32                       // p3/p2
T3_by_T2 = 1.294                      // T3/T2
Mn3 = 0.7157


p3 = p3_by_p2 * p2                    // p3 (in atm) = p3/p2 * p2
T3 = T3_by_T2 * T2                    // T3 (in R) = T3/T2 * T2

phi = beta1_2 - theta                  // (in degrees)
M3 = Mn3/(sin((beta1_2-theta)*%pi/180)) // mach number behind the reflected shock




// Result 
printf("\n phi %.2f degrees", phi)

printf("\n Pressure behind reflected shock, p3 = %.2f atm", p3)

printf("\n Temperature behind reflected shock, T3 = %.2f R", T3)

printf("\n Mach behind reflected shock, M3 = %.2f ", M3)

