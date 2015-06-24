sx = 90e06; // Direct stress in x-direction in Pa
sy = 20e06; // Direct stress in y-direction in Pa
t = 30 ; // Inclination of element in degree
savg = (sx+sy)/2 ; // Average in-plane direct stress
txy = 0 ;
R = sqrt(((sx-sy)/2)^2+(txy)^2) // Radius of mohr circle
// Point D ; at 2t = 60
sx1 = savg + R*cosd(2*t) ; // Direct stress at point D 
tx1y1 = -R*sind(2*t) ;  // shear stress at point D
// Point D ; at 2t = 240
sx2 = savg + R*cosd(90 + t);  // Direct stress at point D 
tx2y2 = R*sind(90 + t);   // shear stress at point D


