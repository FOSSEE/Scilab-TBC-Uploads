a = 55 ; // Angle made by helix with longitudinal axis in degree
r = 1.8 ; // Inner radius of vessel in m
t = 0.02 ; // thickness of vessel in m
E = 200e09 ; // Modulus of ealsticity of steel in Pa
v = 0.3 ; // Poission's ratio of steel 
P = 800e03 ; // Pressure inside the tank in Pa
// Part (a)
s1 = (P*r)/t ; // Circumferential stress in Pa
s2 = (P*r)/(2*t) ; // Longitudinal stress in Pa
// Part (b)
t_max_z = (s1-s2)/2 ; // Maximum inplane shear stress in Pa
t_max = s1/2 ; // Maximum out of plane shear stress in Pa
// Part (c)
e1 = (s1/(2*E))*(2-v) ; // Strain in circumferential direction 
e2 = (s2/E)*(1-(2*v)); // Strain in longitudinal direction
// Part (d)
// x1 is the direction along the helix
theta = 90 - a ; 
sx1 = ((P*r)/(4*t))*(3-cosd(2*theta)); // Stress along x1 direction
tx1y1 = ((P*r)/(4*t))*(sind(2*theta)); // Shear stress in x1y1 plane
sy1 = s1+s2-sx1 ; // Stress along y1 direction 
// Mohr Circle Method
savg = (s1+s2)/2 ; // Average stress in Pa
R = (s1 - s2 )/2 ; // Radius of Mohr's Circle in Pa
sx1_ = savg - R*cosd(2*theta) ; // Stress along x1 direction
tx1y1_ = R*sind(2*theta); // Shear stress in x1y1 plane
 



