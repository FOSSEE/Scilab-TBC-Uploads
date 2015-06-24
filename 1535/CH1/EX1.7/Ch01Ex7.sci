// Scilab Code Ex1.7 : Page-26 (2010)
// Comparing the standard equation
// u(x,t) = A*sin(2*%pi(x/lambda-t/T)) 
// with the given equation, we get
A = 1.5e-03;    // Amplitude of the sound wave, m
lambda = 8;    // Wavelength of the sound wave, m
T = 1/40;    // Time period of the sound wave, s
nu = 1/T;    // Frequency of the sound wave, Hz
v = nu*lambda;    // Velocity of the sound wave, m/s
printf("\nThe amplitude of the sound wave = %3.1e m", A);
printf("\nThe wavelength of the sound wave = %1d m", lambda);
printf("\nThe time period of the sound wave = %3.2f s", T);
printf("\nThe frequency of the sound wave = %2d Hz", nu);
printf("\nThe velocity of the sound wave = %3d m/s", v);


// Result 
// The amplitude of the sound wave = 1.5e-003 m
// The wavelength of the sound wave = 8 m
// The time period of the sound wave = 0.03 s
// The frequency of the sound wave = 40 Hz
// The velocity of the sound wave = 320 m/s
