// Scilab Code Ex1.8 :  Page-26 (2010)
A = 2;    // Amplitude of the wave, cm
T = 0.5;    // Time period of the wave, sec
v = 200;    // Wave velocity, cm/s
f = 1/0.5;    // Frequency of the wave, Hz
lambda = v/f;    // Wavelength of the wave, cm
printf("\nThe Equation of the wave moving along X-axis :");
printf("u = %1d*sin*2*pi*(x/%3d-t/%2.1f)", A, lambda, T);


// Result 
// The Equation of the wave moving along X-axis :u = 2*sin*2*pi*(x/100-t/0.5) 
