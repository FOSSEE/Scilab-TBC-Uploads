// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 6: INTERFERENCE OF POWER LINES WITH NEIGHBOURING COMMUNICATION CIRCUITS

// EXAMPLE : 6.1 :
// Page number 206
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0             // Frequency(Hz)
d = 4.0              // Spacing b/w conductors(m)
D = 2.0              // Distance of telephone line below conductor(m)
s = 60.0/100         // Spacing b/w telephone line(m)
r = 2.0              // Radius of power line(mm)
I = 150.0            // Current in power line(A)

// Calculations
D_ac = (D**2+((d-s)/2)**2)**0.5            // Distance b/w a & c(m)
D_ad = (D**2+(((d-s)/2)+s)**2)**0.5        // Distance b/w a & d(m)
M = 4.0*10**-7*log(D_ad/D_ac)*1000         // Mutual inductance b/w circuits(H/km)
V_CD = 2.0*%pi*f*M*I                       // Voltage induced in the telephone line(V/km)

// Results
disp("PART II - EXAMPLE : 6.1 : SOLUTION :-")
printf("\nMutual inductance between the circuits, M = %.e H/km", M)
printf("\nVoltage induced in the telephone line, V_CD = %.2f V/km", V_CD)
