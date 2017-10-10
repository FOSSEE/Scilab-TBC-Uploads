// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.11 :
// Page number 202-203
clear ; clc ; close ; // Clear the work space and console

// Given data
a = 120.0                 // Area(mm^2)
ds = 2.11                 // Diameter of each strand(mm)
W = 1118.0/1000           // Weight of conductor(kg/m)
L = 200.0                 // Span(m)
stress = 42.2             // Ultimate tensile stress(kg/mm^2)
wind = 60.0               // Wind pressure(kg/m^2)
t = 10.0                  // Ice thickness(mm)

// Calculations
n = 3.0                                          // Number of layers
d = (2*n+1)*ds                                   // Overall diameter of conductor(mm)
u = stress*a                                     // Ultimate strength(kg)
T = u/4.0                                        // Working stregth(kg)
// Case(a)
S_a = W*L**2/(8*T)                               // Sag in still air(m)
// Case(b)
area = d*100*10.0*10**-6                         // Projected area to wind pressure(m^2)
w_w = wind*area                                  // Wind load/m(kg)
w_r = (W**2+w_w**2)**0.5                         // Resultant weight/m(kg)
S_b = w_r*L**2/(8*T)                             // Total sag with wind pressure(m)
w_i = 0.915*%pi/4*((d+2*t)**2-(d**2))/1000.0     // Weight of ice on conductor(kg/m)
area_i = (d+2*t)*1000.0*10**-6                   // Projected area to wind pressure(m^2)
w_n = wind*area_i                                // Wind load/m(kg)
w_r_c = ((W+w_i)**2+w_n**2)**0.5                 // Resultant weight/m(kg)
S_c = w_r_c*L**2/(8*T)                           // Total sag with wind pressure and ice coating(m)
S_v = S_c*(W+w_i)/w_r_c                          // Vertical component of sag(m)

// Results
disp("PART II - EXAMPLE : 5.11 : SOLUTION :-")
printf("\nCase(a) : Sag in still air, S = %.2f m", S_a)
printf("\nCase(b) : Sag with wind pressure, S = %.2f m", S_b)
printf("\n          Sag with wind pressure and ice coating, S = %.2f m", S_c)
printf("\n          Vertical sag, S_v = %.2f m \n", S_v)
printf("\nNOTE: ERROR: calculation mistake in the textbook")
