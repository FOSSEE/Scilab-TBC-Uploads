// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.2 :
// Page number 128-129
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 10.0                 // Length(km)
V_s = 11.0*10**3         // Sending end voltage(V)
P = 1000.0*10**3         // Load delivered at receiving end(W)
PF_r = 0.8               // Receiving end lagging power factor
r = 0.5                  // Resistance of each conductor(ohm/km)
x = 0.56                 // Reactance of each conductor(ohm/km)

// Calculations
// Case(a)
R = r*l                             // Resistance per phase(ohm)
X = x*l                             // Reactance per phase(ohm)
E_s = V_s/3**0.5                    // Phase voltage(V)
I = P/(3**0.5*V_s*PF_r)             // Line current(A)
// Case(b)
sin_phi_r = (1-PF_r**2)**0.5        // Sinφ_R
E_r = E_s-I*R*PF_r-I*X*sin_phi_r    // Receiving end voltage(V)
E_r_ll = 3**0.5*E_r/1000            // Receiving end line to line voltage(kV)
// Case(c)
loss = 3*I**2*R                     // Loss in the transmission line(W)
P_s = P+loss                        // Sending end power(W)
n = P/P_s*100                       // Transmission efficiency(%)
// Alternate method
Z = R**2+X**2
P_A = 1.0/3*P                       // Load delivered(W/phase)
Q = 1.0*P*sin_phi_r/(3*PF_r)        // Reactive load delivered(VAR/phase)
A = (V_s**2/3.0)-2*(P_A*R+Q*X)      // Constant
B = (1/9.0)*P**2*Z/PF_r**2          // Constant
const = (A**2-4*B)**0.5             // sqrt(A^2-4B)
E_r_A = ((A+const)/2)**0.5/1000.0   // Receiving end voltage(kV/phase)
E_r_A_ll = 3**0.5*E_r_A             // Receiving end line-line voltage(kV)
I_A = P/(3**0.5*E_r_A_ll*1000*PF_r) // Line current(A)
loss_A = 3*I_A**2*R                 // Loss in the transmission line(W)
P_s_A = P+loss_A                    // Sending end power(W)
n_A = P/P_s_A*100                   // Transmission efficiency(%)

// Results
disp("PART II - EXAMPLE : 3.2 : SOLUTION :-")
printf("\nCase(a): Line current, |I| = %.1f A", I)
printf("\nCase(b): Receiving end voltage, E_r = %.f V (line-to-neutral) = %.2f kV (line-to-line)", E_r,E_r_ll)
printf("\nCase(c): Efficiency of transmission = %.2f percent \n", n)
printf("\nAlternative solution by mixed condition:")
printf("\nCase(a): Line current, |I| = %.1f A", I_A)
printf("\nCase(b): Receiving end voltage, E_r = %.3f kV/phase = %.2f kV (line-line)", E_r_A,E_r_A_ll)
printf("\nCase(c): Efficiency of transmission = %.2f percent", n_A)
