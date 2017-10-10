clc
// Example 4.6.py
// Consider a 15 deg half angle wedge at zero angle of attack in a Mach 3 flow of
// air. Calculate the drag coefficient. Assume that the pressure exerted over the 
// base of the wedge, the base pressure, is equal to the free stream pressure.



// Variable declaration 
M1 = 3.0            // upstream mach number
theta = 15.0        // deflection (in degrees)
gamma1 = 1.4         // ratio of specific heats

 
// Calculations 
// subscript 2 means behind the shock

// from figure 4.5 from M1 = 3.0, theta = 15.0 deg.
beta1 = 32.2                 // shock angle (in degress)

// degree to radian conversion is done by multiplying by %pi/180
//
Mn1 = M1 * sin(beta1*%pi/180) // upstream mach number normal to the shock

// from Table A2 for Mn1 = 1.6
p2_by_p1 = 2.82            // p2/p1

cd1 = 4/(gamma1*M1*M1)*(p2_by_p1 - 1)*tan(theta*%pi/180)


// Results
printf("\n Coefficient of drag is %.3f",(cd1))

