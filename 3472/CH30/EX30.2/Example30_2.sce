// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.2 :
// Page number 512
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 10000.0     // Generator rating(kVA)
f = 50.0          // Frequency(Hz)
I_1 = 30.0        // Positive sequence current(%)
I_2 = 10.0        // Negative sequence current(%)
I_0 = 5.0         // Zero sequence current(%)
d = 1.0/100       // Diameter of conductor(m)
D = 5.0           // Triangular spacing(m)
kV = 30.0         // Generator voltage on open-circuit(kV)
l = 20.0          // Distance of line at short circuit occurance(km)

// Calculations
a = exp(%i*120.0*%pi/180)                                          // Operator
Z_g1 = kV**2*I_1*I_2/kVA                                           // Positive phase sequence reactance of generator(ohm)
Z_g2 = Z_g1*I_2/I_1                                                // Negative phase sequence reactance of generator(ohm)
Z_g0 = Z_g1*I_0/I_1                                                // Zero phase sequence reactance of generator(ohm)
r = d/2                                                            // Radius of conductor(m)
Z_l1 = 2.0*%pi*f*(0.5+4.606*log10(D/r))*10**-7*l*1000              // Positive phase sequence reactance of line(ohm)
Z_l2 = 2.0*%pi*f*(0.5+4.606*log10(D/r))*10**-7*l*1000              // Negative phase sequence reactance of line(ohm)
Z_1 = %i*(Z_g1+Z_l1)                                               // Z1 upto the point of fault(ohm)
Z_2 = %i*(Z_g2+Z_l2)                                               // Z2 upto the point of fault(ohm)
E_a = kV*1000/3**0.5                                               // Phase voltage(V)
I_a1 = E_a/(Z_1+Z_2)                                               // Positive sequence current in line a(A)
I_a2 = -I_a1                                                       // Negative sequence current in line a(A)
I_a0 = 0                                                           // Zero sequence current in line a(A)
I_b0 = 0                                                           // Zero sequence current in line b(A)
I_c0 = 0                                                           // Zero sequence current in line c(A)
I_a = I_a0+I_a1+I_a2                                               // Current in line a(A)
I_b = I_b0+a**2*I_a1+a*I_a2                                        // Current in line b(A)
I_c = I_c0+a*I_a1+a**2*I_a2                                        // Current in line c(A)

// Results
disp("PART III - EXAMPLE : 4.2 : SOLUTION :-")
printf("\nCurrent in line a, I_a = %.f A", abs(I_a))
printf("\nCurrent in line b, I_b = %.f A", real(I_b))
printf("\nCurrent in line c, I_c = %.f A", real(I_c))
