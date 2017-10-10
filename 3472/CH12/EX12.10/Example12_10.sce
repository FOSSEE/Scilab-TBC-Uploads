// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.10 :
// Page number 201-202
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 250.0          // Span(m)
d = 1.42           // Diameter(cm)
w = 1.09           // Dead weight(kg/m)
wind = 37.8        // Wind pressure(kg/m^2)
r = 1.25           // Ice thickness(cm)
f_m = 1050.0       // Maximum working stress(kg/sq.cm)

// Calculations
w_i = 913.5*%pi*r*(d+r)*10**-4          // Weight of ice on conductor(kg/m)
w_w = wind*(d+2*r)*10**-2               // Wind load of conductor(kg/m)
w_r  = ((w+w_i)**2+w_w**2)**0.5         // Resultant pressure(kg/m)
a = %pi*d**2/4.0                        // Area(cm^2)
T_0 = f_m*a                             // Tension(kg)
S = w_r*L**2/(8*T_0)                    // Total sag(m)
vertical_sag = S*(w+w_i)/w_r            // Vertical component of sag(m)

// Results
disp("PART II - EXAMPLE : 5.10 : SOLUTION :-")
printf("\nCase(i) : Sag in inclined direction = %.f m", S)
printf("\nCase(ii): Sag in vertical direction = %.2f m", vertical_sag)
