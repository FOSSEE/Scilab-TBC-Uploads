// Scilab code Ex3.8: Pg 93 (2005)
clc; clear;

// Part (a)
h = 6.63e-34;    // Plank's constant, Js
q = 1.6e-19;    // Electric charge, C
m_e = 9.11e-31;    // Mass of electron, kg
c = 3e+08;     // Velocity of light, m/s
theta = ((%pi)/180)*90;    // Angle, radians
delta_lamda = (h/(m_e*c)*(1-cos(theta)));              // Compton shift, Angstrom
lamda_C = 0.0106;   // Wavelength of gamma-rays from Cobalt, 
f_dl_C = delta_lamda/ lamda_C;   // Fractional change in wavelength of gamma rays from cobalt
printf("\nFractional change in wavelength of gamma rays from Cobalt = %4.2f", f_dl_C*1e+10);
lamda_Mo = 0.712;    // Wavelength of gamma-rays from Molybdenum, Angstrom 
f_dl_Mo = delta_lamda/ lamda_Mo;                 // Fractional change in wavelength of gamma rays from Molybdenum
printf("\nFractional change in wavelength of gamma rays from Molybdenum = %6.4f", f_dl_Mo*1e+10);
lamda_Hg = 5461;    // Wavelength of gamma-rays from Mercury, Angstrom
f_dl_Hg = delta_lamda/ lamda_Hg;                 // Fractional change in wavelength of gamma rays from mercury
printf("\nFractional change in wavelength of gamma rays from Mercury = %4.2fe-06", f_dl_Hg*1e+16);

// Part (b)
lamda = 0.712e-10;   // Wavelength of X-rays, Angstrom
E = (h*c)/(q*lamda);   // Energy of X-rays' photon, eV
printf("\nEnergy of X-rays photon = %5.0f eV\n", E);

// Result
// Fractional change in wavelength of gamma rays from Cobalt = 2.29
// Fractional change in wavelength of gamma rays from Molybdenum = 0.0341
// Fractional change in wavelength of gamma rays from Mercury = 4.45fe-06
// Energy of X-rays photon = 17460 eV
