clc
// Example 4.1.py
// A uniform supersonic stream with M1 = 3.0, p1 = 1 atm, T1 = 288 K encounters
// a compression corner which deflects the stream by an angle theta = 20 deg. 
// Calculate the shock wave angle, and p2, T2, M2, po2 and To2 behind the shock
// wave.


// Variable declaration
M1 = 3.0          // upstream mach number
p1 = 1.0          // upstream pressure (in atm)
T1 = 288          // upstream temperature (in K)
theta = 20        // deflection (in degrees)

// Calculations 
// subscript 2 means behind the shock

// from figure 4.5 from M1 = 3.0, theta = 20.0 deg.
beta1 = 37.5                 // shock angle (in degress)

// degree to radian conversion is done by multiplying by %pi/180
//
Mn1 = M1 * sin(beta1*%pi/180) // upstream mach number normal to the shock

// from Table A2 for Mn1 = 1.826
p2_by_p1 = 3.723            // p2/p1
T2_by_T1 = 1.551            // T2/T1
Mn2 = 0.6108                
po2_by_po1 = 0.8011         // po2/po1

p2 = p2_by_p1 * p1          // p2 (in atm) = p2/p1 * p1
T2 = T2_by_T1 * T1          // T2 (in K) = T2/T1 * T1

M2 = Mn2/(sin((beta1-theta)*%pi/180)) // mach number behind the shock

// from A1 for M1 = 3.0
po1_by_p1 = 36.73
To1_by_T1 = 2.8

po2 = po2_by_po1 * po1_by_p1 * p1   // po2 (in atm) = po2/po1 * po1/p1 * p1
To1 =  To1_by_T1 * T1   // To2 (in atm) = To2/To1 * To1/T1 * T1
To2 = To1_by_T1 * T1   // To2 (in atm) = To2/To1 * To1/T1 * T1


// Result 
printf("\n Shock wave angle %.2f degrees",(beta1))

printf("\n p2 = %.2f atm", p2)

printf("\n T2 = %.2f K", T2)

printf("\n M2 = %.2f ", M2)

printf("\n po2 = %.2f atm", po2)

printf("\n To2 = %.2f K", To2)

