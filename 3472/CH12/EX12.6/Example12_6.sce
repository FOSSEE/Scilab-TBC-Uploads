// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.6 :
// Page number 199-200
clear ; clc ; close ; // Clear the work space and console

// Given data
a = 0.484           // Area of conductor(sq.cm)
d = 0.889           // Overall diameter(cm)
w_c = 428/1000.0    // Weight(kg/m)
u = 1973.0          // Breaking strength(kg)
s = 2.0             // Factor of safety
L = 200.0           // Span(m)
t = 1.0             // Ice thickness(cm)
wind = 39.0         // Wind pressure(kg/m^2)

// Calculations
// Case(i)
l = L/2.0                                         // Half span(m)
T = u/s                                           // Allowable maximum tension(kg)
D_1 = w_c*l**2/(2*T)                              // Maximum sag due to weight of conductor(m)
// Case(ii)
w_i = 913.5*%pi*t*(d+t)*10**-4                    // Weight of ice on conductor(kg/m)
w = w_c+w_i                                       // Total weight of conductor & ice(kg/m)
D_2 = w*l**2/(2*T)                                // Maximum sag due to additional weight of ice(m)
// Case(iii)
D = d+2.0*t                                       // Diameter due to ice(cm)
w_w = wind*D*10**-2                               // Wind pressure on conductor(kg/m)
w_3 = ((w_c+w_i)**2+w_w**2)**0.5                  // Total force on conductor(kg/m)
D_3 = w_3*l**2/(2*T)                              // Maximum sag due to (i), (ii) & wind(m)
theta = atand(w_w/(w_c+w_i))                      // θ(°)
vertical_sag = D_3*cosd(theta)                    // Vertical sag(m)

// Results
disp("PART II - EXAMPLE : 5.6 : SOLUTION :-")
printf("\nCase(i)  : Maximum sag of line due to weight of conductor, D = %.2f metres", D_1)
printf("\nCase(ii) : Maximum sag of line due to additional weight of ice, D = %.2f metres", D_2)
printf("\nCase(iii): Maximum sag of line due to (i),(ii) plus wind, D = %.2f metres", D_3)
printf("\n           Vertical sag = %.2f metres", vertical_sag)
