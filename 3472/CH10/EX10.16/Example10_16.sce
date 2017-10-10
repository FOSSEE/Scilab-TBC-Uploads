// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.16 :
// Page number 145-146
clear ; clc ; close ; // Clear the work space and console
funcprot(0)

// Given data
V_r = 132.0*10**3           // Receiving end voltage(V)
f = 50.0                    // Frequency(Hz)
L = 200.0                   // Line length(km)
l = 1.3*10**-3              // Inductance(H/km)
c = 9.0*10**-9              // Capacitance(F/km)
r = 0.2                     // Resistance(ohm/km)
g = 0.0                     // Conductance(mho/km)
P_r = 50.0*10**6            // Power received(VA)
PF_r = 0.8                  // Lagging power factor at receiving end

// Calculations
z = r+%i*2*%pi*f*l                              // Total impedance(ohm/km)
y = g+%i*2*%pi*f*c                              // Total susceptance(mho/km)
Z_c = (z/y)**0.5                                // Surge impedance(ohm)
gamma = (z*y)**0.5                              // γ
gamma_l = gamma*L                               // γl
cosh_gl = cosh(gamma_l)                         // cosh γl
sinh_gl = sinh(gamma_l)                         // sinh γl
V_2 = V_r/(3**0.5)                              // Receiving end phase voltage(V)
I_2 = P_r/(3*V_2)*exp(%i*-acos(PF_r))           // Line current(A)
V_1 = V_2*cosh_gl+I_2*Z_c*sinh_gl               // Sending end voltage(V)
V_1kV = V_1/1000.0                              // Sending end voltage(kV)
I_1 = (V_2/Z_c)*sinh_gl+I_2*cosh_gl             // Sending end current(A)
angle_V2_V1 = phasemag(V_1)                     // Angle between V_2 and V_1(°)
angle_V2_I1 = phasemag(I_1)                     // Angle between V_2 and I_1(°)
angle_V1_I1 = angle_V2_V1-angle_V2_I1           // Angle between V_1 and I_1(°)
PF_s = cosd(angle_V1_I1)                        // Sending end power factor
P_1 = 3*abs(V_1*I_1)*PF_s                       // Sending end power(W)
P_2 = P_r*PF_r                                  // Receiving end power(W)
n = P_2/P_1*100                                 // Efficiency

// Results
disp("PART II - EXAMPLE : 3.16 : SOLUTION :-")
printf("\nSending end voltage, V_1 = %.3f∠%.4f° kV per phase", abs(V_1kV),phasemag(V_1kV))
printf("\nSending end current, I_1 = %.3f∠%.2f° A", abs(I_1),phasemag(I_1))
printf("\nPower factor = %.3f ", PF_s)
printf("\nEfficiency, η = %.2f percent", n)
