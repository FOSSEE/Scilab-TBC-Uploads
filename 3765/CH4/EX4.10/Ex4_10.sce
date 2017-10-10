clc
// Example 4.10.py
// Consider an infinitely this flat plate at 5 degrees angle of attack in a Mach
// 2.6 free stream. Calculate the lift and drag coefficients. 

//

// Variable declaration
alpha = 5.0    // angle of attack in degrees (in degrees)
M1 = 2.6       // freestream mach number 
gamma1 = 1.4    // ratio of specific heats

// Calculations 

// from table A5 for M1 = 2.6
v1 = 41.41      // (in degrees)
v2 = v1 + alpha // (in degrees)
// from table A5 for v2 = 46.41 deg
M2 = 2.85
// from A1 for M1 = 2.6
po1_by_p1 = 19.95
// from A1 for M2 = 2.85
po2_by_p2 = 29.29

p2_by_p1 = 1/po2_by_p2 * po1_by_p1 // p2/p1 = p2/po2 * po2/po1 * po1/p1 and po2 = po1

// from theta-beta1-M diagram for M1 = 2.6
theta = 5.0               // deflection (in degrees)
beta1 = 26.5               // shock angle (in degrees)
Mn1 = M1*sin(beta1*%pi/180) // mach number normal to the shock

// from table A2 for Mn1 = 1.16
p3_by_p1 = 1.403          // p3/p1

cl = 2.0/(gamma1*M1*M1)*(p3_by_p1 - p2_by_p1)*cos(alpha*%pi/180) // coefficient of lift
cd1 = 2.0/(gamma1*M1*M1)*(p3_by_p1 - p2_by_p1)*sin(alpha*%pi/180) // coefficient of drag


// Results
printf("\n Lift coefficient : %.3f",(cl))

printf("\n Drag coefficient : %.4f",(cd1))

