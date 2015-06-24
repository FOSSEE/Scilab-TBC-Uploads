// Scilab Code Ex4.7 : Page-93 (2010)
w = 5;    // Width of the grating, cm
N = 320;    // Number of lines per cm on grating, per cm
N0 = w*N;    // Total number of lines on the grating
lambda = 640;    // Wavelength of light, nm
n = 2;    // Order of diffraction
d_lambda = lambda/(n*N0);    // Separation between wavelengths which the gratign can just resolve, nm
printf("\nThe separation between wavelengths which the grating can just resolve = %3.1f nm", d_lambda);

// Result 
// The separation between wavelengths which the grating can just resolve = 0.2 nm