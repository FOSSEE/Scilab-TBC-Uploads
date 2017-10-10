// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.9 :
// Page number 201
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 300.0            // Span(m)
T_still = 45.0       // Temperature in still air(°C)
a = 226.0            // Area(mm^2)
d = 19.53/10         // Overall diameter(cm)
w_2 = 0.844          // Weight of conductor(kg/m)
u = 7950.0           // Ultimate strength(kg)
alpha = 18.44*10**-6 // Co-efficient of linear expression(/°C)
E = 9.32*10**3       // Modulus of elasticity(kg/mm^2)
t = 0.95             // Ice thickness(cm)
wind = 39.0          // Wind pressure(kg/m^2)
T_worst = -5.0       // Temperature in worst condition(°C)

// Calculations
w_i = 915.0*%pi*t*(d+t)*10**-4          // Weight of ice on conductor(kg/m)
w_w = wind*(d+2*t)*10**-2               // Wind load of conductor(kg/m)
w_1  = ((w_2+w_i)**2+w_w**2)**0.5       // Total force on conductor(kg/m)
t = T_still-T_worst                     // Temperature(°C)
l = L/2.0                               // Half span(m)
T = u/2.0                               // Allowable tension(kg)
A = 1.0                                 // Co-efficient of x^3
B = a*E*(alpha*t+((w_1*l/T)**2/6))-T    // Co-efficient of x^2
C = 0                                   // Co-efficient of x
D = -(w_2**2*l**2*a*E/6)                // Co-efficient of constant
T_2_sol = roots([A,B,C,D])              // Roots of tension of a line
T_2_s = T_2_sol(3)                      // Feasible solution of tension of 
T_2 = 1710.0                            // Tension in conductor(kg). Obtianed directly from textbook
sag = w_2*l**2/(2*T_2)                  // Sag at erection(m)

// Results
disp("PART II - EXAMPLE : 5.9 : SOLUTION :-")
printf("\nSag at erection = %.2f metres", sag)
printf("\nTension of the line, T_2 = %.f kg (An app. solution as per calculation) = %.f kg (More correctly as standard value)", T_2_s,T_2)
