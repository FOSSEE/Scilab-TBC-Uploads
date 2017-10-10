clc
// Example 1.7.py
// A flat plate with a chord length of 3 ft and an infinite span(perpendicular to
// the page in fig 1.5) is immersed in a Mach 2 flow at standard sea level
// conditions at an angle of attack of 10 degrees. The pressure distribution
// over the plate is as follows: upper surface, p2=constant=1132 lb/ft^2 lower
// surface, p3=constant=3568 lb/ft^2. The local shear stress is given by tau_w =
// 13/xeta^0.2, where tau_w is in pounds per square feet and xeta is the distance
// in feet along the plate from the leading edge. Assume the distribution of 
// tau_w over the top and bottom surfaces is the same. Both the pressure and
// shear disributions are sketched qualitatively in fig. 1.5. Calculate the lift
// and drag per unit span on the plate.

//

// Variable declaration
M1 = 2.0        // mach number freestream
p1 = 2116.0     // pressure at sea level (in lb/ft^2)
l = 3.0         // chord of plate (in ft)
alpha = 10.0    // angle of attack in degrees

p2 = 1132.0     // pressure on the upper surface (in lb/ft^2)
p3 = 3568.0     // pressure on the lower surface (in lb/ft^2)

// Calculations

// assuming unit span

pds = -p2*l + p3*l   // integral p.ds from leading edge to trailing edge (in lb/ft)

L = pds*cos(alpha*%pi/180.0) // lift per unit span (in lb/ft), alpha is converted to radians

Dw = pds*sin(alpha*%pi/180.0) // pressure drag per unit span (in lb/ft), alpha is converted to radians

Df = 16.25 * (l** 4.0/5.0) // skin friction drag per unit span (in lb/ft) 
                             // from integral tau.d(xeta)

Df = 2 * Df * cos(alpha*%pi/180.0) // since skin friction acts on both the side

D = Df + Dw                  // total drag per unit span (in lb/ft)
// Result 
printf("\n Total Lift per unit span = %.0f lb", L)

printf("\n Total Drag per unit span = %.0f lb", D)

