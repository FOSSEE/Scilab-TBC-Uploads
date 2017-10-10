// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 4: ILLUMINATION

// EXAMPLE : 4.3 :
// Page number 753-754
clear ; clc ; close ; // Clear the work space and console

// Given data
cp = 200.0        // cp of a lamp
per = 0.6         // Reflector directing light
D = 10.0          // Diameter(m)
h = 6.0           // Height at which lamp is hung(m)

// Calculations
flux = cp*4*%pi                             // Flux(lumens)
I_i = cp/h**2                               // Illumination at the centre without reflector(lux)
d = (h**2+(D/2)**2)**0.5                    // (m)
I_without = (cp/h**2)*(h/d)                 // Illumination at the edge without reflector(lux)
I_with = cp*4*%pi*per/(25*%pi)              // Illumination at the edge with reflector(lux)
theta = acosd(h/d)                          // θ(°)
w = 2.0*%pi*(1-cosd(theta/2))               // ω(steradian)
phi = cp*w                                  // Φ(lumens)
I_avg = phi/(25*%pi)                        // Average illumination over the area without reflector(lux)

// Results
disp("PART IV - EXAMPLE : 4.3 : SOLUTION :-")
printf("\nCase(i) : Illumination at the centre without reflector = %.2f lux", I_i)
printf("\n          Illumination at the centre with reflector = %.1f lux", I_with)
printf("\nCase(ii): Illumination at the edge of the surface without reflector = %.2f lux", I_without)
printf("\n          Illumination at the edge of the surface with reflector = %.1f lux", I_with)
printf("\nAverage illumination over the area without the reflector, I  = %.3f lux\n", I_avg)
printf("\nNOTE: ERROR: Slight calculation mistake & more approximation in textbook solution")
