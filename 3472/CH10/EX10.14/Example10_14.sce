// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.14 :
// Page number 144
clear ; clc ; close ; // Clear the work space and console
funcprot(0)

// Given data
f = 50.0                      // Frequency(Hz)
r = 0.1                       // Resistance(ohm/km)
l = 1.4*10**-3                // Inductance(H/km)
c = 8.0*10**-9                // Capacitance(F/km)
g = 4.0*10**-8                // conductance(mho/km)
V_r = 400.0                   // Receiving end voltage(kV)
x = 200.0                     // Length of line(km)

// Calculations
V_2 = V_r/3**0.5                         // Receiving end phase voltage(kV)
z = r+%i*2*%pi*f*l                       // Total impedance(ohm/km)
y = g+%i*2*%pi*f*c                       // Total susceptance(mho/km)
Z_c = (z/y)**0.5                         // Surge impedance(ohm)
gamma = (z*y)**0.5                       // γ
// Case(i)
V_0_plus = V_2/2                         // Incident voltage to neutral at receiving end(kV)
// Case(ii)
V_0_minus = V_2/2                        // Reflected voltage to neutral at receiving end(kV)
// Case(iii)
gamma_l = gamma*x                        // γl
V_1_plus = (V_2/2)*exp(gamma_l)          // Incident voltage to neutral at 200 km from receiving end(kV)
V_1_minus = (V_2/2)*exp(-gamma_l)        // Reflected voltage to neutral at 200 km from receiving end(kV)
// Case(iv)
V_1 = V_1_plus+V_1_minus                 // Resultant voltage to neutral(kV)
V_L = abs(V_1)                           // Resultant voltage to neutral(kV)
V_L_ll = 3**0.5*V_L                      // Line to line voltage at 200 km from receiving end(kV)

// Results
disp("PART II - EXAMPLE : 3.14 : SOLUTION :-")
printf("\nCase(i)  : Incident voltage to neutral at receiving end, V_0_plus = %.1f∠%.f° kV", abs(V_0_plus),phasemag(V_0_plus))
printf("\nCase(ii) : Reflected voltage to neutral at receiving end, V_0_minus = %.1f∠%.f° kV", abs(V_0_minus),phasemag(V_0_minus))
printf("\nCase(iii): Incident voltage to neutral at 200 km from receiving end, V_1_plus = (%.3f+%.2fj) kV", real(V_1_plus),imag(V_1_plus))
printf("\nCase(iv) : Resultant voltage to neutral at 200 km from receiving end, V_L = %.2f kV", V_L)
printf("\n           Line to line voltage at 200 km from receiving end = %.2f kV", V_L_ll)
