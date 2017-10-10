// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.12 :
// Page number 303-304
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0          // Frequency(Hz)
P = 4.0           // Number of poles
G = 20.0          // Rating of generator(MVA)
H = 9.0           // Inertia constant(kWsec/MVA)
P_m = 26800.0     // Rotational loss(hp)
P_e = 16000.0     // Electric power developed(kW)

// Calculations
GH = G*H                                       // Energy stored in rotor at synchronous speed(MJ)
P_m_kW = P_m*0.746                             // Rotational loss(kW)
P_a = P_m_kW-P_e                               // Acceleration power(kW)
P_a1 = P_a/1000.0                              // Acceleration power(MW)
M = GH/(180*f)                                 // Angular momentum
acceleration = P_a1/M                          // Acceleration(°/sec^2)
acceleration_1 = acceleration*%pi/180.0        // Acceleration(rad/sec^2)

// Results
disp("PART II - EXAMPLE : 10.12 : SOLUTION :-")
printf("\nKinetic energy stored in the rotor at synchronous speed, GH = %.f MJ", GH)
printf("\nAcceleration = %.f°/sec^2 = %.2f rad/sec^2 \n", acceleration,acceleration_1)
printf("\nNOTE: ERROR: H = 9 kW-sec/MVA, not 9 kW-sec/kVA as mentioned in the textbook statement")
