// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.5 :
// Page number 130
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                 // Frequency(Hz)
l = 20.0                 // Length(km)
P = 5.0*10**6            // Load delivered at receiving end(W)
PF_r = 0.8               // Receiving end lagging power factor
r = 0.02                 // Resistance of each conductor(ohm/km)
L = 0.65*10**-3          // Inductance of each conductor(H/km)
E_r = 10.0*10**3         // Receiving end voltage(V)

// Calculations
R = r*l                                     // Resistance per phase(ohm)
X = 2*%pi*f*L*l                         // Reactance per phase(ohm)
// Case(a)
I = P/(E_r*PF_r)                            // Line current(A)
sin_phi_r = (1-PF_r**2)**0.5                // Sinφ_R
E_s = E_r+I*R*PF_r+I*X*sin_phi_r            // Sending end voltage(V)
E_s_kV = E_s/1000.0                         // Sending end voltage(kV)
reg = (E_s-E_r)/E_r*100                     // Voltage regulation(%)
// Case(b)
reg_new = reg/2                             // New regulation(%)
E_s_new = (reg_new/100)*E_r+E_r             // New value of sending end voltage(V)
tan_phi_r1 = ((E_s_new-E_r)*(E_r/P)-R)/X    // tanφ_r1
phi_r1 = atan(tan_phi_r1)                   // φ_r1(radians)
phi_r1d = phi_r1*180/%pi                    // φ_r1(degree)
PF_r1 = cos(phi_r1)                         // Lagging power factor of receiving end
sin_phi_r1 = (1-PF_r1**2)**0.5              // Sinφ_r1
I_R_new = P/(E_r*PF_r1)                     // New line current(A)
I_R = I_R_new*complex(PF_r1,-sin_phi_r1)
I_c = I_R-I*complex(PF_r,-sin_phi_r)        // Capacitive current(A)
I_C = imag(I_c)                             // Imaginary part of Capacitive current(A)
c = I_C/(2*%pi*f*E_r)*10.0**6               // Capacitance(µF)
// Case(c)
loss_1 = I**2*R                             // Loss(W)
n_1 = P/(P+loss_1)*100                      // Transmission efficiency(%)
loss_2 = I_R_new**2*R                       // Loss(W)
n_2 = P/(P+loss_2)*100                      // Transmission efficiency(%)

// Results
disp("PART II - EXAMPLE : 3.5 : SOLUTION :-")
printf("\nCase(a): Sending end voltage, E_s = %.2f kV", E_s_kV)
printf("\n         Voltage regulation of the line = %.1f percent", reg)
printf("\nCase(b): Value of capacitors to be placed in parallel with load, c = %.2f µF", c)
printf("\nCase(c): Transmission efficiency in part(a), η_1 = %.2f percent", n_1)
printf("\n         Transmission efficiency in part(b), η_2 = %.1f percent", n_2)
