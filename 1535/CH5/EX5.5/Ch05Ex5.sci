// Scilab Code Ex5.5 : Phase retardation for quartz : Page-114 (2010)
lambda = 500e-09;    // Wavelength of incident light, m
mu_e = 1.5508;    // Refractive index of extraordinary ray
mu_o = 1.5418;    // Refractive index of ordinary ray
t = 0.032e-03;    // Thickness of quartz plate, m
dx = (mu_e - mu_o)*t;    // Path difference between E-ray and O-ray, m
dphi = (2*%pi)/lambda*dx;    // Phase retardation for quartz for given wavelength, rad
printf("\nThe phase retardation for quartz for given wavelength = %5.3f pi rad", dphi/%pi);

// Result 
// The phase retardation for quartz for given wavelength = 1.152 pi rad