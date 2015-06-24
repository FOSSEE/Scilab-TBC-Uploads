P = 12 ; // Axial load in K
r = 2.1 ; // Inner radius of the cylinder in inch
t = 0.15 ; // Thickness of the cylinder in inch
ta = 6500 ; // Allowable shear stress in Psi
// From in plane sg=hear stress
p1 = (ta - 3032)/3.5 ; // allowable internal pressure
// Above equation comes from solving the following equation
// sx = (p*r)/(2*t) - (P)/(2*%pi*r*t) ;
// sy = (p*r)/t ;
// s1 = sy
// s2 = sx 
// ta = (s1-s2)/2

// From out of the plane shear stress
// ta = s1/2
p2 = (ta + 3032)/3.5 ; // allowable internal pressure
// ta = s2/2
p3 = 6500/7 ;  // allowable internal pressure

p_allow = min(p1,p2,p3); // Minimum pressure would govern the design
disp("Becausem inimum pressure would govern the design","psi",p_allow,"Maximum allowable internal pressure ")


