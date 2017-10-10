clc
// Example 4.8.py
// A uniform supersonic stream with M1 = 1.5, p1 = 1700 lb/ft^2, and T1 = 460.0 R
// encounters an expansion corner which deflects the stream by and angle theta_2
// = 20 degrees. Calculate M2, p2, T2, po2, To2, and the angles the forward and
// rearward Mach lines make with respect to the upstream flow direction.


// Variable declaration
M1 = 1.5          // upstream mach number
p1 = 1700.0       // upstream pressure (in lb/ft^2)
T1 = 460.0        // upstream temperature (in R)
theta_2 = 20.0    // deflection (in degrees)


// Calculations 
// subscript 2 means after the expansion fan

// from Table A5 for M1 = 1.5
v1 = 11.91        // (in degrees)
mu1 = 41.81       // (in degrees)

v2 = v1 + theta_2

// from Table A5, for v2 = 31.91
M2 = 2.207        // Mach behind the expansion fan
mu2 = 26.95       // (in degrees)

// from Table A1 for M1 = 1.5
po1_by_p1 = 3.671 // po1/p1
To1_by_T1 = 1.45  // To1/T1

// from Table A1 for M2 = 2.207
po2_by_p2 = 10.81 // po2/p2
To2_by_T2 = 1.974 // To2/T2

p2 = 1/po2_by_p2 * po1_by_p1 * p1 // p2 (in lb/ft^2) = p2/po2 * po2/po1 * po1/p1 * p1 and po2 = po1
T2 = 1/To2_by_T2 * To1_by_T1 * T1 // T2 (in R) = T2/To2 * To2/To1 * To1/T1 * T1 and To2 = To1


angle_forward  = mu1              // angle of forward ray (in degrees)
angle_rearward = mu2 - theta_2    // angle of backward ray (in degrees)

po2 = po1_by_p1 * p1        // po2 (in lb/ft^2) = po1/p1 * p1
To2  = To1_by_T1 * T1        // To2 (in R) = To1/T1 * T1
 po1 = po1_by_p1 * p1        // po2 (in lb/ft^2) = po1/p1 * p1
 To1 = To1_by_T1 * T1        // To2 (in R) = To1/T1 * T1

// Result 
printf("\n M2 = %.3f", M2)

printf("\n p2 = %.2f lb/ft^2", p2)

printf("\n T2 = %.2f deg R", T2)

printf("\n po2 = %.2f lb/ft^2", po2)

printf("\n To2 = %.2f deg R", To2)

printf("\n Angle forward = %.2f degrees", angle_forward)

printf("\n Angle rearward = %.2f degrees", angle_rearward)

