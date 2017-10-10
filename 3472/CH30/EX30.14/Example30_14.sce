// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.14 :
// Page number 522-523
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 10000.0    // Generator rating(kVA)
kV = 13.8        // Generator rating(kV)
X_st = 10.0      // Sub-transient reactance(%)
X_2 = 10.0       // Negative sequence reactance(%)
X_0 = 5.0        // Zero sequence reactance(%)
X = 8.0          // Grounding reactor(%)
X_con = 6.0      // Reactance of reactor connecting generator & transformer(%)

// Calculations
a = exp(%i*120.0*%pi/180)              // Operator
Z_1 = %i*(X_st+X_con)/100              // Positive sequence impedance(p.u)
Z_2 = %i*(X_2+X_con)/100               // Negative sequence impedance(p.u)
Z_0 = %i*X_con/100                     // Zero sequence impedance(p.u)
E_a = 1.0                              // Phase voltage(p.u)
I_a1 = E_a/(Z_1+Z_2+Z_0)               // Sub-transient current in the faulty phase(p.u)
I_A1 = %i*I_a1                         // Positive sequence current(p.u)
I_A2 = -%i*I_a1                        // Negative sequence current(p.u)
I_A = I_A1+I_A2                        // Initial symmetrical r.m.s current in phase a(p.u)
I_B1 = a**2*I_A1                       // Positive sequence current(p.u)
I_B2 = a*I_A2                          // Negative sequence current(p.u)
I_B = I_B1+I_B2                        // Initial symmetrical r.m.s current in phase b(p.u)
I_C1 = a*I_A1                          // Positive sequence current(p.u)
I_C2 = a**2*I_A2                       // Negative sequence current(p.u)
I_C = I_C1+I_C2                        // Initial symmetrical r.m.s current in phase c(p.u)
I_base = kVA/(3**0.5*kV)               // Base current(A)
I_A_amp = I_A*I_base                   // Initial symmetrical r.m.s current in phase a(p.u)
I_B_amp = I_B*I_base                   // Initial symmetrical r.m.s current in phase b(p.u)
I_C_amp = I_C*I_base                   // Initial symmetrical r.m.s current in phase c(p.u)

// Results
disp("PART III - EXAMPLE : 4.14 : SOLUTION :-")
printf("\nInitial symmetrical r.m.s current in all phases of generator are,")
printf("\n I_A = %.f A", abs(I_A_amp))
printf("\n I_B = %.f∠%.f° A", abs(I_B_amp),phasemag(I_B_amp))
printf("\n I_C = %.f∠%.f° A", abs(I_C_amp),phasemag(I_C_amp))
