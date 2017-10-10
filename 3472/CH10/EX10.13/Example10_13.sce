// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.13 :
// Page number 143-144
clear ; clc ; close ; // Clear the work space and console

// Given data
V_r = 220.0*10**3           // Receiving end voltage(V)
Z = complex(20,100)         // Impedance(ohm/phase)
Y = %i*0.0010               // Admittance(mho)
I_r = 300.0                 // Receiving end current(A)
PF_r = 0.9                  // Lagging power factor

// Calculations
V_2 = V_r/3**0.5                           // Receiving end phase voltage(V)
I_2 = I_r*exp(%i*-acos(PF_r))              // Receiving end current(A)
I_C2 = (Y/2)*V_2                           // Capacitive current at receiving end(A)
I = I_2+I_C2
V_1 = V_2+I*Z                              // Voltage across shunt admittance at sending end(V)
V_1kV = V_1/1000.0                         // Voltage across shunt admittance at sending end(kV)
I_C1 = (Y/2)*V_1                           // Capacitive current at sending end(A)
I_1 = I_C1+I_2                             // Sending end current(A)

// Results
disp("PART II - EXAMPLE : 3.13 : SOLUTION :-")
printf("\nSending end voltage, V_1 = %.2f∠%.2f° kV", abs(V_1kV),phasemag(V_1kV))
printf("\nSending end current, I_1 = %.3f∠%.4f° A", abs(I_1),phasemag(I_1))
