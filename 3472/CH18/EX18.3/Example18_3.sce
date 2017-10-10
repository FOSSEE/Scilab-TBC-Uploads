// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.3 :
// Page number 331-332
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 6600.0             // Voltage(V)
R = 0.045              // Resistance(ohm)
X = 0.45               // Reactance(ohm)
Load = 10000.0*10**3   // Total load(W)
PF = 0.8               // Lagging power factor
I_a = 437.5            // Armature current(A)

// Calculations
I = Load/(3**0.5*V*PF)                           // Load current(A)
I_working = PF*I                                 // Working component of current(A)
I_watless = (1-PF**2)**0.5*I                     // Watless component of current(A)
I_second = (I_a**2+I_watless**2)**0.5            // Load current supplied by second alternator(A)
PF_second = I_a/I_second                         // Lagging power factor of second alternator
V_ph = V/3**0.5                                  // Terminal voltage per phase(V)
I_R = I_second*R                                 // Voltage drop due to resistance(V)
I_X = I_second*X                                 // Voltage drop due to reactance(V)
sin_phi_second = (1-PF_second**2)**0.5
E = ((V_ph+I_R*PF_second+I_X*sin_phi_second)**2+(I_X*PF_second-I_R*sin_phi_second)**2)**0.5   // EMF of the alternator(V/phase)
E_ll = 3**0.5*E                                  // Line-to-line EMF of the alternator(V)

// Results
disp("PART II - EXAMPLE : 11.3 : SOLUTION :-")
printf("\nArmature current of other alternator = %.1f A", I_second)
printf("\ne.m.f of other alternator = %.f V (line-to-line)", E_ll)
printf("\nPower factor of other alternator = %.3f (lagging)", PF_second)
