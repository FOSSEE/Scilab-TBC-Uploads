// Scilab Code Ex4.8 : Page-93 (2010)
lambda = 550e-09;    // Wavelength of light, m
D = 3.2e-02;    // Diameter of circular lens, m
f = 24e-02;    // Focal length of the lens, m    
theta_min = 1.22*lambda/D;    // Minimum angle of resolution provided by the lens, rad
// As delta_x/f = theta_min, solving for delta_x
delta_x = theta_min*f;    // Separation of the centres of the images in the focal plane of lens, m
printf("\nThe separation of the centres of the images in the focal plane of lens = %1d micro-metre", delta_x/1e-06);

// Result 
// The separation of the centres of the images in the focal plane of lens = 5 micro-metre