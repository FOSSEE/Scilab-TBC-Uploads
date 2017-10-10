// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.3 :
// Page number 726-727
clear ; clc ; close ; // Clear the work space and console

// Given data
R = 50.0    // Resistance of each resistor in oven(ohm)
n = 6.0     // Number of resistance
V = 400.0   // Supply voltage(V)
tap = 50.0  // Auto-transformer tapping(%)

// Calculations
// Case(a)(i)
P_a_i = n*V**2/R*10**-3                       // Power consumption for 6 elements in parallel(kW)
// Case(a)(ii)
P_each_a_ii = V**2/(R+R)*10**-3               // Power consumption in each group of 2 resistances in series(kW)
P_a_ii = n/2*P_each_a_ii                      // Power consumption for 3 groups(kW)
// Case(b)(i)
V_b_i = V/3**0.5                              // Supply voltage against each resistance(V)
P_each_b_i = 2*V_b_i**2/R*10**-3              // Power consumption in each branch(kW)
P_b_i = n/2*P_each_b_i                        // Power consumption for 2 elements in parallel in each phase(kW)
// Case(b)(ii)
V_b_ii = V/3**0.5                             // Supply voltage to any branch(V)
P_each_b_ii = V_b_ii**2/(R+R)*10**-3          // Power consumption in each branch(kW)
P_b_ii = n/2*P_each_b_ii                      // Power consumption for 2 elements in series in each phase(kW)
// Case(c)(i)
P_each_c_i = V**2/(R+R)*10**-3                // Power consumption by each branch(kW)
P_c_i = n/2*P_each_c_i                        // Power consumption for 2 elements in series in each branch(kW)
// Case(c)(ii)
P_each_c_ii = 2*V**2/R*10**-3                 // Power consumption by each branch(kW)
P_c_ii = n/2*P_each_c_ii                      // Power consumption for 2 elements in parallel in each branch(kW)
// Case(d)
V_d = V*tap/100                               // Voltage under tapping(V)
ratio_V = V_d/V                               // Ratio of normal voltage to tapped voltage
loss = ratio_V**2                             // Power loss in terms of normal power

// Results
disp("PART IV - EXAMPLE : 2.3 : SOLUTION :-")
printf("\nCase(a): AC Single phase 400 V supply")
printf("\n         Case(i) :  Power consumption for 6 elements in parallel = %.1f kW", P_a_i)
printf("\n         Case(ii):  Power consumption for 3 groups in parallel with 2 element in series = %.1f kW", P_a_ii)
printf("\nCase(b): AC Three phase 400 V supply with star combination")
printf("\n         Case(i) :  Power consumption for 2 elements in parallel in each phase = %.1f kW", P_b_i)
printf("\n         Case(ii):  Power consumption for 2 elements in series in each phase = %.1f kW", P_b_ii)
printf("\nCase(c): AC Three phase 400 V supply with delta combination")
printf("\n         Case(i) :  Power consumption for 2 elements in series in each branch = %.1f kW", P_c_i)
printf("\n         Case(ii):  Power consumption for 2 elements in parallel in each branch = %.1f kW", P_c_ii)
printf("\nCase(d): Power loss will be %.2f of the values obtained as above with auto-transformer tapping", loss)
