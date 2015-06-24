// Scilab code Ex1.6: Pg 25 (2005)
clc; clear;
// For simplification assume velocity of light equal to unity
c = 1                   // Velocity of light, m/s
lamda_obs = 474e-09;         // Wavelength measured by observer, m
lamda_source = 394e-09;       // Wavelength measured in the source's rest frame, m
v = ((lamda_obs^2 - lamda_source^2)/(lamda_obs^2 + lamda_source^2))*c;                    // Receding velocity of Hydra, m/s
printf("\nReceding velocity of Hydra = %5.3fc m/s", v);

// Result
// Receding velocity of Hydra = 0.183c m/s 
