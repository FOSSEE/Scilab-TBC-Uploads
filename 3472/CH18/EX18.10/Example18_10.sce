// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.10 :
// Page number 336
clear ; clc ; close ; // Clear the work space and console

// Given data
load_1 = 10000.0      // Total balanced load(kW)
V = 33000.0           // Voltage(V)
PF_1 = 0.8            // Lagging power factor
R = 1.6               // Resistance of feeder(ohm/phase)
X = 2.5               // Reactance of feeder(ohm/phase)
load_2 = 4460.0       // Load delivered by feeder(kW)
PF_2 = 0.72           // Lagging power factor

// Calculations
I = load_1*1000/(3**0.5*V*PF_1)*exp(%i*-acos(PF_1))       // Total line current(A)
I_1 = load_2*1000/(3**0.5*V*PF_2)*exp(%i*-acos(PF_2))     // Line current of first feeder(A)
I_2 = I-I_1                                               // Line current of first feeder(A)
Z_1 = complex(R,X)                                        // Impedance of first feeder(ohm)
Z_2 = I_1*Z_1/I_2                                         // Impedance of second feeder(ohm)

// Results
disp("PART II - EXAMPLE : 11.10 : SOLUTION :-")
printf("\nImpedance of second feeder, Z_2 = %.2f∠%.1f° ohm \n", abs(Z_2),phasemag(Z_2))
printf("\nNOTE: ERROR: Changes in the obtained answer from that of textbook is due to wrong values of substitution")
