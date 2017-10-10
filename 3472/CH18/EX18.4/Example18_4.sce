// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.4 :
// Page number 332-333
clear ; clc ; close ; // Clear the work space and console

// Given data
X = 10.0               // Reactance(ohm)
I_a = 220.0            // Armature current(A)
PF = 1.0               // Unity power factor
V = 11000.0            // Phase voltage(V)
emf_raised = 0.2       // EMF rasied by 20%

// Calculations
I_X = I_a*X                        // Reactance drop(V)
E_0 = (V**2+I_X**2)**0.5           // EMF(V)
E_00 = (1+emf_raised)*E_0          // New value of induced emf(V)
U = ((E_00**2-I_X**2)**0.5-V)/X    // Current(A)
I_1 = (I_a**2+U**2)**0.5           // Current(A)
PF_1 = I_a/I_1                     // Lagging power factor
I_X_2 = (E_00**2+V**2)**0.5        // Reactance drop(V)
I_2 = I_X_2/X                      // Current corresponding to this drop(A)
PF_2 = E_00/I_X_2                  // Leading power factor
P_max = V*I_2*PF_2/1000            // Maximum power output(kW)

// Results
disp("PART II - EXAMPLE : 11.4 : SOLUTION :-")
printf("\nNew value of machine current = %.1f A", I_1)
printf("\nNew vaue of power factor, p.f = %.4f (lagging)", PF_1)
printf("\nPower output at which alternator break from synchronism = %.f kW", P_max)
printf("\nCurrent corresponding to maximum load = %.f A", I_2)
printf("\nPower factor corresponding to maximum load = %.4f (leading) \n", PF_2)
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
