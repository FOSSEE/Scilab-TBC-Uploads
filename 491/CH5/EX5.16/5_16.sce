Af = 40*180; // Area of flange in mm2
V = 10500 ; // Shear force acting on cross section
F = 800 ; // Allowable load in shear
df = 120 ; // Distance between centroid of flange and neutral axis in mm
Q = Af*df ; // First moment of cross section of flange
I = (1/12)*(210*280^3) - (1/12)*(180*200^3) ; // Moment of inertia of entire cross section in mm4
f = (V*Q)/I; // Shear flow
s = (2*F)/f  // Spacing between the screw
disp("mm",s,"The maximum permissible longitudinal spacing s of the screws is")
