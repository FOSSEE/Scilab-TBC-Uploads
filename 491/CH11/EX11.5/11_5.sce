E = 29000; // Modulus of elasticity in ksi
sy = 36 ; // Yeilding stress in ksi
L = 20 ; // Length of coloumn in ft
r = 2.57 ; // radius of gyration of coloumn
K = 1 ; // Effetive Length factor
s = sqrt((2*%pi^2*E)/sy) // Criticle slenderness ratio (K*L)/r
s_ = (L*12)/r; // Slenderness ratio
// Part(a)
n1 = (5/3)+((3/8)*(s_/s))-((1/8)*((s_^3)/(s^3)));// Factor of safety 
sallow = (sy/n1)*(1-((1/2)*((s_^2)/(s^2)))); // Allowable axial load
A = 17.6; // Cross sectional area from table E1
Pallow = sallow*A ; // Allowable axial load
disp("k",Pallow,"Allowable axial load is")
// Part (b)
Pe = 200 ; // Permissible load in K
L_ = 25 ; // Assumed length in ft
s__ = (L_*12)/r; // Slenderness ratio
n1_ = (5/3)+((3/8)*(s__/s))-((1/8)*((s__^3)/(s^3)));// Factor of safety 
sallow_ = (sy/n1_)*(1-((1/2)*((s__^2)/(s^2)))); // Allowable axial load
A = 17.6 ; // Area of the cross section in^2
Pallow = sallow_*A  // Allowable load
L1 = [24 24.4 25];
P1 = [201 194 190];
L_max = interpln([P1;L1],Pe); // Interpolation for getting the length correspondong to permissible load
disp("ft",L_max,"The maximum permissible length is")

